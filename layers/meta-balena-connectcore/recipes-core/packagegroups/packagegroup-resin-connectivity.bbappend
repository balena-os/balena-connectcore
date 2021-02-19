RDEPENDS_${PN}_append = " ${MACHINE_EXTRA_RRECOMMENDS}"
RDEPENDS_${PN}_append_ccimx8x = "${@bb.utils.contains('DISTRO_FEATURES', 'bluetooth', ' bluez5-init', '', d)}"
