RDEPENDS_${PN}_append = " ${MACHINE_EXTRA_RRECOMMENDS}"
RDEPENDS_${PN}_append_ccimx8x = "${@bb.utils.contains('DISTRO_FEATURES', 'bluetooth', ' bluez5-init', '', d)}"

# remove unused firmware to make space in the rootfs
CONNECTIVITY_FIRMWARES:remove = " \
	linux-firmware-iwlwifi-135-6 \
	linux-firmware-iwlwifi-3160 \
	linux-firmware-iwlwifi-6000-4 \
	linux-firmware-iwlwifi-6000g2a-6 \
	linux-firmware-iwlwifi-6000g2b-6 \
	linux-firmware-iwlwifi-6050-5 \
	linux-firmware-iwlwifi-7260 \
	linux-firmware-iwlwifi-7265 \
	linux-firmware-iwlwifi-7265d \
	linux-firmware-iwlwifi-8000c \
	linux-firmware-iwlwifi-8265 \
	linux-firmware-iwlwifi-license \
	linux-firmware-wl18xx \
	linux-firmware-ralink \
	linux-firmware-rtl8192cu \
	linux-firmware-ath9k \
	linux-firmware-mt7601u \
	linux-firmware-rtl8192su \
	linux-firmware-rtl8723 \
	linux-firmware-rtl8723b-bt \
	linux-firmware-bcm43143 \
	linux-firmware-rtl8188eu \
	linux-firmware-wl12xx \
	linux-firmware-wlcommon \
"
