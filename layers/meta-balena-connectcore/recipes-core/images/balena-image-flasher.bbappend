include balena-image.inc

IMAGE_CMD_balenaos-img_append_ccimx8x () {
    dd if=${DEPLOY_DIR_IMAGE}/imx-boot-${MACHINE}-${SOC_REVISION}-${SOM_MEMORY_VARIANT}.${UBOOT_SUFFIX} of=${BALENA_RAW_IMG} conv=notrunc seek=32 bs=1024
}
