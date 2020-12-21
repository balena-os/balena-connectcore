FILESEXTRAPATHS_append := ":${THISDIR}/files"

HOSTAPP_HOOKS_append_ccimx8x = " \
    99-resin-uboot \
    99-flash-bootloader \
"
