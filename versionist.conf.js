'use strict';

const _ = require('lodash')
const fs = require('fs')
const path = require('path')
const semver = require('balena-semver')
const shell = require('shelljs')
const yaml = require('js-yaml');

const isESR = (version) => {
  return /^\d{4}.(01|04|07|10).\d*$/.test(version)
}

const getMetaResinFromSubmodule = (documentedVersions, history, callback) => {
  // This is a hack because git does not update all the relevant files when moving a
  // submodule. Because of this, older repos will still have references to meta-resin
  // and new ones will refer to meta-balena
  const metaName = fs.existsSync('.git/modules/layers/meta-resin', fs.constants.R_OK)
    ? 'meta-resin'
    : 'meta-balena'
  shell.exec(`git --git-dir .git/modules/layers/${metaName} describe --tags --exact-match`, (code, stdout, stderr) => {
    if (code != 0) {
      return callback(new Error(`Could not find ${metaName} submodule`))
    }
    const match = stdout.replace(/\s/g,'').replace(/^v/g, '')

    if (!match) {
      return callback(new Error(`Could not determine ${metaName} version from version ${stdout}`))
    }

    const metaVersion = `${match}+rev0`
    const latestDocumented = _.trim(_.last(documentedVersions.sort(semver.compare)))
    let latestVersion

    if (latestDocumented.includes('rev')) {
      // semver.gt will ignore the revision numbers but still compare the version
      // If metaVersion <= latestDocumented then the latestDocumented version is a revision of the current metaVersion
      latestVersion = semver.gt(metaVersion, latestDocumented) ? metaVersion : latestDocumented
    } else {
      // If latestDocumented does not contain revision, use it as latestVersion
      latestVersion = `${latestDocumented}`
    }
    return callback(null, latestVersion)
  })
}

module.exports = {
  addEntryToChangelog: {
    preset: 'prepend',
    fromLine: 3
  },
  getChangelogDocumentedVersions: {
    preset: 'changelog-headers',
    clean: /^v/
  },

  includeCommitWhen: 'has-changelog-entry',
  getIncrementLevelFromCommit: (commit) => {
    return 'patch'
  },
  incrementVersion: (currentVersion, incrementLevel) => {
    if (isESR(currentVersion)) {
      return semver.inc(currentVersion, 'patch')
    }
    const parsedCurrentVersion = semver.parse(currentVersion)
    if ( parsedCurrentVersion.build && parsedCurrentVersion.build != '' ) {
      let revision = Number(String(parsedCurrentVersion.build).split('rev').pop())
      if (!_.isFinite(revision)) {
        throw new Error(`Could not extract revision number from ${currentVersion}`)
      }
      if (revision == 0) {
        return `${parsedCurrentVersion.version}`
      } else {
        return  `${parsedCurrentVersion.version}+rev${revision + 1}`
      }
    }
    return `${parsedCurrentVersion.version}+rev1` 
  },
  updateContract: (cwd, version, callback) => {
      if (/^\d+\.\d+\.\d+$/.test(version) == false &&
          /^\d+\.\d+\.\d+\+rev\d+$/.test(version) == false) {
        return callback(new Error(`Invalid version ${version}`));
      }

      const contract = path.join(cwd, 'balena.yml');
      if (!fs.existsSync(contract)) {
        return callback(null, version);
      }

      const content = yaml.load(fs.readFileSync(contract, 'utf8'));
      content.version = version;
      fs.writeFile(contract, yaml.dump(content), callback);
  },
  getCurrentBaseVersion: getMetaResinFromSubmodule,
  updateVersion: 'update-version-file',

  transformTemplateDataAsync: {
    preset: 'nested-changelogs',
    upstream: [
      {
        pattern: 'meta-resin',
        repo: 'meta-resin',
        owner: 'resin-os',
        ref: 'master'
      },
      {
        pattern: 'meta-balena',
        repo: 'meta-balena',
        owner: 'balena-os',
        ref: 'master'
      },
      {
        pattern: 'balena-yocto-scripts',
        repo: 'balena-yocto-scripts',
        owner: 'balena-os',
        ref: 'master'
      },
    ]
  },

  template: 'default'
}
