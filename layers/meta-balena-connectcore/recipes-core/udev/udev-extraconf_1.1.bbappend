do_install_append () {
    # automount rules from meta-digi affect balenaOS, we don't need them
    rm -f ${D}/etc/udev/rules.d/automount.rules
    # Move udev rules into /lib as /etc/udev/rules.d is bind mounted for custom rules
    install -d ${D}${base_libdir}/udev/rules.d
    mv ${D}/etc/udev/rules.d/*.rules ${D}${base_libdir}/udev/rules.d/
}

FILES_${PN} += "/lib/udev/rules.d"
