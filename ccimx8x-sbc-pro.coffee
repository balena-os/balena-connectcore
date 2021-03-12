deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

CC_SD_BOOT = 'Configure the boot microswitches (S2) for SD boot (SW1 OFF and SW2 ON).'
CC_EMMC_BOOT = 'Configure the boot microswitches (S2) for internal (eMMC) boot (SW1 OFF and SW2 OFF).'
CC_VARIANT_WARNING = 'Make sure your SBC contains a system-on-module with a 2GB i.MX8X quad B0 system-on-chip. Different module variants are not supported by this device type and will not boot.'

postProvisioningInstructions = [
        instructions.BOARD_SHUTDOWN
        instructions.REMOVE_INSTALL_MEDIA
        CC_EMMC_BOOT
        instructions.BOARD_REPOWER
]

module.exports =
	version: 1
	slug: 'ccimx8x-sbc-pro'
	aliases: [ 'ccimx8x-sbc-pro' ]
	name: 'ConnectCore 8X SBC Pro'
	arch: 'aarch64'
	state: 'new'
	community: true

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_SD
		instructions.EJECT_SD
		CC_VARIANT_WARNING
		CC_SD_BOOT
		instructions.FLASHER_WARNING
		instructions.CONNECT_AND_BOOT
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'https://www.balena.io/docs/learn/getting-started/ccimx8x-sbc-pro/nodejs/'
		osx: 'https://www.balena.io/docs/learn/getting-started/ccimx8x-sbc-pro/nodejs/'
		linux: 'https://www.balena.io/docs/learn/getting-started/ccimx8x-sbc-pro/nodejs/'

	supportsBlink: false

	options: [ networkOptions.group ]

	yocto:
		machine: 'ccimx8x-sbc-pro'
		image: 'balena-image-flasher'
		fstype: 'balenaos-img'
		version: 'yocto-dunfell'
		deployArtifact: 'balena-image-flasher-ccimx8x-sbc-pro.balenaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
