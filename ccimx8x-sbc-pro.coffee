deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'ccimx8x-sbc-pro'
	aliases: [ 'ccimx8x-sbc-pro' ]
	name: 'ConnectCore 8X SBC Pro'
	arch: 'aarch64'
	state: 'new'
	community: true

	instructions: commonImg.instructions
	gettingStartedLink:
		windows: 'https://www.balena.io/docs/learn/getting-started/ccimx8x-sbc-pro/nodejs/'
		osx: 'https://www.balena.io/docs/learn/getting-started/ccimx8x-sbc-pro/nodejs/'
		linux: 'https://www.balena.io/docs/learn/getting-started/ccimx8x-sbc-pro/nodejs/'

	supportsBlink: false

	options: [ networkOptions.group ]

	yocto:
		machine: 'ccimx8x-sbc-pro'
		image: 'resin-image-flasher'
		fstype: 'resinos-img'
		version: 'yocto-dunfell'
		deployArtifact: 'resin-image-flasher-ccimx8x-sbc-pro.resinos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
