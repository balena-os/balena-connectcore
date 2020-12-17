include resin-image.inc

IMAGE_CMD_resinos-img_append_ccimx8x () {
    dd if=${DEPLOY_DIR_IMAGE}/imx-boot-${MACHINE}-${SOC_REVISION}-${SOM_MEMORY_VARIANT}.${UBOOT_SUFFIX} of=${RESIN_RAW_IMG} conv=notrunc seek=32 bs=1024
}
