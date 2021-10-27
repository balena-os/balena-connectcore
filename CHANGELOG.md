Change log
-----------

# v2.85.10+rev1
## (2021-10-27)

* Update meta-balena from v2.80.1 to v2.85.10 [Alex Gonzalez]

# v2.80.1+rev2
## (2021-09-24)


<details>
<summary> Update balena-yocto-scripts from v1.14.6 to v1.14.9 [Alex Gonzalez] </summary>

> ## balena-yocto-scripts-1.14.9
> ### (2021-08-20)
> 
> * balena-deploy: When deploying hostapp default to using slug as name [Alex Gonzalez]
> * balena-api: Do not use balena_lib_resolve_aliases [Alex Gonzalez]
> * balena_lib: Make resolve_aliases local so it is not globally used [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.14.8
> ### (2021-07-22)
> 
> * Use slug when setting deviceType for leviathan [Kyle Harding]
> 
> ## balena-yocto-scripts-1.14.7
> ### (2021-06-29)
> 
> * balena-lib: Fix print statements helper functions [Kyle Harding]
> * balena-lib: Fix device dir when running in Jenkins containers [Kyle Harding]
> 
</details>

# v2.80.1+rev1
## (2021-06-18)

* Update meta-balena from v2.79.6 to v2.80.1 [Alex Gonzalez]
* Update balena-yocto-scripts from v1.14.3 to v1.14.6 [Alex Gonzalez]

# v2.80.0+rev1
## (2021-06-08)

* Update meta-balena from v2.79.7 to v2.80.0 [Alex Gonzalez]

<details>
<summary> Update balena-yocto-scripts from 1.14.1 to 1.14.3 [Alex Gonzalez] </summary>

> ## balena-yocto-scripts-1.14.3
> ### (2021-06-01)
> 
> * balena-api: Filter out debug output [Alex Gonzalez]
> * balena-api: Specify API environment and token when setting app roles [Alex Gonzalez]
> * jenkins_build-blocks: Separate recipes and packages [Alex Gonzalez]
> * balena-lib: Generalize contract fetcher [Alex Gonzalez]
> * balena-deploy: Shorten installation directory '/yocto/resin-board' to '/work' [Alex Gonzalez]
> * Conditional verbosity mode [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.14.2
> ### (2021-05-26)
> 
> * balena-lib: Add function to fetch labels from image [Alex Gonzalez]
> * balena-lib: contracts: Add package list fetcher [Alex Gonzalez]
> * semver: Add bash utility for semantic version comparison [Alex Gonzalez]
> * balena-docker: Add image retrieval function [Alex Gonzalez]
> 
</details>

* Switch storage driver to overlay2 [Alex Gonzalez]

# v2.79.7+rev1
## (2021-06-08)


<details>
<summary> Update meta-balena from v2.79.4 to v2.79.7 [Mark Corbin] </summary>

> ## meta-balena-2.79.7
> ### (2021-05-26)
> 
> * meta-balena: rename connectivity packagegroup [Mark Corbin]
> 
> ## meta-balena-2.79.6
> ### (2021-05-26)
> 
> * bluez5: Use bluez5 recipe from poky master [Zahari Petkov]
> 
> ## meta-balena-2.79.5
> ### (2021-05-21)
> 
> * README: Update supported Yocto versions [Alex Gonzalez]
> 
</details>

* balena-connectcore: rename connectivity packagegroup [Mark Corbin]

# v2.79.6+rev1
## (2021-06-08)

* Update meta-balena from v2.79.4 to v2.79.6 [Alex Gonzalez]

# v2.79.4+rev1
## (2021-05-24)

* Add balena-yocto-scripts to upstream sources in repo.yml [Alex Gonzalez]
* Update meta-balena from v2.72.1 to v2.79.4 [Alex Gonzalez]

<details>
<summary> Update  balena-yocto-scripts from v1.11.1 to v1.14.1 [Alex Gonzalez] </summary>

> ## balena-yocto-scripts-1.14.1
> ### (2021-05-24)
> 
> * Add a parsable representation of the changelog [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.14.0
> ### (2021-05-21)
> 
> * Dockerfile_yocto-block-build-env: Add container to build Yocto based hostOS blocks [Alex Gonzalez]
> * balena-build-block: Balena build and deploy a hostOS block image [Alex Gonzalez]
> * jenkins_build-blocks: Add package blocks builder script [Alex Gonzalez]
> * balena-deploy: Add functions to deploy block, feed and OS release [Alex Gonzalez]
> * README: Add brief introduction to the main scripts [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.13.0
> ### (2021-05-19)
> 
> * barys: Replace supervisor tag with supervisor release version [Alex Gonzalez]
> * jenkins_build: Replace supervisor tag with supervisor release [Alex Gonzalez]
> * jenkins_build: Rename metaResinBranch to metaBalenaBranch [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.16
> ### (2021-05-18)
> 
> * tests: Substitute deviceType with MACHINE when packaging tests [Kyle Harding]
> 
> ## balena-yocto-scripts-1.12.15
> ### (2021-05-18)
> 
> * Dockerfile_yocto-build-env: Specify docker version [Alex Gonzalez]
> * balena-docker: Allow to control iptables and ipmasq flags [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.14
> ### (2021-05-17)
> 
> * balena-api: Set default argument value not to exist on nounset setting [Alex Gonzalez]
> * balena-api: Allow access to OS developers to public apps [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.13
> ### (2021-05-14)
> 
> * balena-api: Add functions for apps management [Alex Gonzalez]
> * balena-api: Add block images getter functions [Alex Gonzalez]
> * balena-api: Add missing argument to function comments [Alex Gonzalez]
> * balena-deploy-block: Create public app if required [Alex Gonzalez]
> * balena-lib: Fix device installation path when running in helper container [Alex Gonzalez]
> * balena-deploy: Fix device installation path when running in helper container [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.12
> ### (2021-05-12)
> 
> * balena-docker: Adapt to be used from POSIX shell [Alex Gonzalez]
> * balena-docker: Generalize functions to any engine [Alex Gonzalez]
> * balena-build: Re-enable the container's output [Alex Gonzalez]
> * balena-build: Add option to keep local containers [Alex Gonzalez]
> * yocto-build-env: Update Dockerfile to add host tools dependencies [Alex Gonzalez]
> * Shorten installation directory '/yocto/resin-board' to '/work' [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.11
> ### (2021-05-11)
> 
> * Substitute device type in config.js if present [Kyle Harding]
> 
> ## balena-yocto-scripts-1.12.10
> ### (2021-04-28)
> 
> * balena-build: print submodule status [Alex Gonzalez]
> * balena-build: Correctly pass development images flag and amend usage [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.9
> ### (2021-04-22)
> 
> * balena-build: Pass the API environment to the build container [Alex Gonzalez]
> * balena-lib: Add function to resolve between contract slugs and Yocto machines [Alex Gonzalez]
> * balena-build: Do not exit if no SSH_AUTH_SOCK defined [Alex Gonzalez]
> * balena-build: Fix indentation [Alex Gonzalez]
> * balena-build: Cleanup build containers and enable build output [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.8
> ### (2021-04-15)
> 
> * balena-build: Fix development image build [Alex Gonzalez]
> * jenkins_build-containers: Use a fixed length for the git short revision [Alex Gonzalez]
> * balena-lib: Do not err when sourcing without a repository [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.7
> ### (2021-04-12)
> 
> * balena-api: Improve logs when setting version [Alex Gonzalez]
> * balena-docker: Make it less verbose [Alex Gonzalez]
> * balena-deploy: Set the OS version before setting deploy directory [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.6
> ### (2021-03-30)
> 
> * include: Move include files and entry scripts into its own folder [Alex Gonzalez]
> * balena-build.sh: Move into build script [Alex Gonzalez]
> * balena-lib: Set default namespace if not defined [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.5
> ### (2021-03-30)
> 
> * balena-deploy: Shellcheck warnings [Alex Gonzalez]
> * balena-deploy-block: Adjust variables for common use [Alex Gonzalez]
> * balena-deploy-block: Fix shellcheck warnings [Alex Gonzalez]
> * balena-deploy: Adjust balena_deploy_hostapp to new balena_deploy_block entrypoint arguments [Alex Gonzalez]
> * balena-deploy.inc: Pass API environment to balena_lib_token [Alex Gonzalez]
> * balena-build: Pass an API environment to balena_lib_token [Alex Gonzalez]
> * balena-lib: Pass API environment to balena_lib_token [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.4
> ### (2021-03-29)
> 
> * balena-api: Add is_dt_private function [Alex Gonzalez]
> * balena-lib: Add several function to extract device details from device type JSON file [Alex Gonzalez]
> * balena-lib: By default only login to BaleneCloud if not token is found [Alex Gonzalez]
> * balena_deploy: Add functions to deploy Jenkins artifacts to S3 and dockerhub [Alex Gonzalez]
> * balena-deploy: Fix indentation and shellcheck warnings [Alex Gonzalez]
> * jenkins_build: Call out to script libraries functions [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.3
> ### (2021-03-26)
> 
> * balena-lib: Fix indentation to tabs [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.2
> ### (2021-03-26)
> 
> * balena-docker: Remove execution trace flag [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.1
> ### (2021-03-25)
> 
> * balena-lib: Add commonly used utility functions [Alex Gonzalez]
> * jenkins_build-containers: Allow docker login for local development [Alex Gonzalez]
> * barys: Add bitbake-args argument and make bitbake-target accept multiple arguments [Alex Gonzalez]
> * jenkins_build: Separate deploy functions [Alex Gonzalez]
> * jenkins_build: Refactor balena_lib_get_os_version [Alex Gonzalez]
> * balena-api: Add script library with API calls [Alex Gonzalez]
> * balena-push-os-version: Rename to balena-deploy-block and set the release version on deploy [Alex Gonzalez]
> * Dockerfile_balena-push-env: Refactor to use balena-deploy-block [Alex Gonzalez]
> * balena-build: Split build related functions [Alex Gonzalez]
> * jenkins_build: Separate barys build functions [Alex Gonzalez]
> * balena-deploy: Add script library for deploy logic [Alex Gonzalez]
> * jenkins_build: Use balena_deploy_hostapp from balena-deploy [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.12.0
> ### (2021-03-25)
> 
> * barys: Improve template layer matching [Kyle Harding]
> 
> ## balena-yocto-scripts-1.11.2
> ### (2021-03-22)
> 
> * jenkins_build-container: Do not overwrite environment DOCKERFILES variable if provided [Alex Gonzalez]
> * balena-lib: Rename to balena-lib.inc [Alex Gonzalez]
> * balena-lib: Rename functions with the balena_lib prefix [Alex Gonzalez]
> * jenkins_build: Use balena-lib.inc instead of balena-inc.sh [Alex Gonzalez]
> 
</details>

# v2.73.10+rev2
## (2021-04-16)

* Revert to balena-yocto-scripts v1.11.1 [Alex Gonzalez]

# v2.73.10+rev1
## (2021-04-15)

* Update meta-balena from v2.72.1 to v2.73.10 [Alex Gonzalez]
* Update  balena-yocto-scripts from v1.11.1 to v1.12.8 [Alex Gonzalez]

# v2.72.0+rev1
## (2021-03-11)

* Rename resin image types to balena [Kyle Harding]

<details>
<summary> Update meta-balena from v2.68.1 to v2.72.0 [Kyle Harding] </summary>

> ## meta-balena-2.72.0
> ### (2021-03-10)
> 
> 
> <details>
> <summary> os-config: Update os-config from v1.1.4 to v1.2.0 [Kyle Harding] </summary>
> 
>> ### os-config-1.2.0
>> #### (2021-02-23)
>> 
>> * os-config: rename flasher flag path [Kyle Harding]
>> 
> </details>
> 
> * Rename resin image types to balena [Kyle Harding]
> 
> ## meta-balena-2.71.7
> ### (2021-03-08)
> 
> * Apply aufs patches if aufs is present in kernel config [Kyle Harding]
> 
> ## meta-balena-2.71.6
> ### (2021-03-05)
> 
> * grub-efi: build required modules into grub image [Joseph Kogut]
> 
> ## meta-balena-2.71.5
> ### (2021-03-03)
> 
> * initrdscripts: always use by-uuid symlink looking for flasher rootfs [Michal Toman]
> 
> ## meta-balena-2.71.4
> ### (2021-03-01)
> 
> * Update OS test suite [Vipul Gupta (@vipulgupta2048)]
> 
> ## meta-balena-2.71.3
> ### (2021-02-26)
> 
> * balena: Make the healthcheck loading service part of balena.service [Robert Günzler]
> 
> ## meta-balena-2.71.2
> ### (2021-02-23)
> 
> * dnsmasq: enable dbus support [Kyle Harding]
> * dnsmasq: update to 2.84 with dnspooq fix [Kyle Harding]
> 
> ## meta-balena-2.71.1
> ### (2021-02-23)
> 
> * recipes-bsp: grub: install only release modules [Joseph Kogut]
> 
> ## meta-balena-2.71.0
> ### (2021-02-15)
> 
> * meta-balena-common: add grub-efi support [Joseph Kogut]
> 
> ## meta-balena-2.70.2
> ### (2021-02-12)
> 
> * Update PR template to specify test coverage in more detail [Alex Gonzalez]
> * Update codeowners [Alex Gonzalez]
> 
> ## meta-balena-2.70.1
> ### (2021-02-11)
> 
> * Add leviathan automated OS test suite [Vipul Gupta (@vipulgupta2048)]
> 
> ## meta-balena-2.70.0
> ### (2021-02-11)
> 
> * systemd/timeinit: use systemd mount unit for /etc/fake-hwclock [Mark Corbin]
> 
> ## meta-balena-2.69.1
> ### (2021-02-03)
> 
> * Update balena-supervisor from v12.3.0 to v12.3.5 [Miguel Casqueira]
> 
> ## meta-balena-2.69.0
> ### (2021-02-01)
> 
> * openvpn: remove resin-ntp-config call from upscript.sh [Mark Corbin]
> * resin-vars: trigger NTP config script on config.json changes [Mark Corbin]
> * resin-ntp-config: update script and add systemd service [Mark Corbin]
> * networkmanager: add improved dispatcher scripts for NTP handling [Mark Corbin]
> * chrony: add sourcedir support and helper script [Mark Corbin]
> 
</details>

* Update balena-yocto-scripts from v1.9.0 to v1.11.0 [Kyle Harding]

# v2.68.1+rev5
## (2021-02-19)

* Add bluetooth support [Alex Gonzalez]

# v2.68.1+rev4
## (2021-02-14)

* Add u-boot environment import/export functionality [Alex Gonzalez]
* Correct provisioning instructions for ccimx8x-sbc-pro [Alex Gonzalez]

# v2.68.1+rev3
## (2021-02-13)

* Add instructions for SD boot [Alex Gonzalez]

# v2.68.1+rev2
## (2021-02-13)

* Default to B0 / 2GB / 32bits module variants [Alex Gonzalez]

# v2.68.1+rev1
## (2021-02-13)


<details>
<summary> Update meta-balena from v2.65.1 to v2.68.1 [Alex Gonzalez] </summary>

> ## meta-balena-2.68.1
> ### (2021-01-29)
> 
> * Fix task ordering for the iwlwifi_firmware_clean task [Florin Sarbu]
> 
> ## meta-balena-2.68.0
> ### (2021-01-29)
> 
> * Update NetworkManager to 1.28.0 [Zahari Petkov]
> 
> ## meta-balena-2.67.6
> ### (2021-01-28)
> 
> * docs: mention balenaRootCA as a config.json parameter [Matthew McGinn]
> 
> ## meta-balena-2.67.5
> ### (2021-01-27)
> 
> * replace busybox ps with procps [klutchell] [Kyle Harding]
> 
> ## meta-balena-2.67.4
> ### (2021-01-27)
> 
> * Update aufs4 and aufs5 kernel patches [Florin Sarbu]
> 
> ## meta-balena-2.67.3
> ### (2021-01-15)
> 
> * kernel-headers-test: Install python dependency [Alexandru Costache]
> 
> ## meta-balena-2.67.2
> ### (2021-01-14)
> 
> * Fix pppd timeout when launched by NetworkManager [Zahari Petkov]
> 
> ## meta-balena-2.67.1
> ### (2021-01-13)
> 
> * resin-device-register: Fix post provisioning state not reported [Alexandru Costache]
> 
> ## meta-balena-2.67.0
> ### (2021-01-12)
> 
> * Update balena-supervisor from v12.2.11 to v12.3.0 [Felipe Lalanne]
> 
> ## meta-balena-2.66.3
> ### (2021-01-12)
> 
> * Respect custom CA in supervisor [Michal Toman]
> 
> ## meta-balena-2.66.2
> ### (2021-01-11)
> 
> * README: Rename resin-logo to balena-logo. [Alex Gonzalez]
> 
> ## meta-balena-2.66.1
> ### (2021-01-04)
> 
> * kernel-devsrc: use upstream recipe starting with dunfell [Kyle Harding]
> * gen_mod_headers: add missing arch headers to tools [Kyle Harding]
> 
> ## meta-balena-2.66.0
> ### (2020-12-18)
> 
> * chrony: bump to version 4.0 [Mark Corbin]
> 
</details>

# v2.65.1+rev1
## (2021-01-21)

* Add support for the ConnectCore 8X SBC Pro modules [Alex Gonzalez]
