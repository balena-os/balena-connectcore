IMAGE_FSTYPES_append_ccimx8x = " balenaos-img"
PARTITION_TABLE_TYPE_ccimx8x = "gpt"
# Device specific space in KB
DEVICE_SPECIFIC_SPACE_ccimx8x = "2048"
BALENA_BOOT_SIZE_ccimx8x = "65536"
BALENA_IMAGE_ALIGNMENT_ccimx8x = "2048"

BALENA_BOOT_PARTITION_FILES_append_ccimx8x = " \
    boot.scr:/boot.scr \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE}-${MACHINE}.bin \
    ${@ ' '.join([os.path.basename(dtb) + ':/' + os.path.basename(dtb) for dtb in d.getVar('KERNEL_DEVICETREE').split()]) } \
    imx-boot-${MACHINE}-${SOC_REVISION}-${SOM_MEMORY_VARIANT}.${UBOOT_SUFFIX}:/imx-boot \
"
