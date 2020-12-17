FILESEXTRAPATHS_append := ":${THISDIR}/files"

UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

# BalenaOS does not use user space environment tools
UBOOT_INITIAL_ENV = ""

SRC_URI_append_ccimx8x = "\
    file://ccimx8x-Use-BalenaOS-partition-table.patch \
"
