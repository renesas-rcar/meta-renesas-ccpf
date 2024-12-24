FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

do_install:append_rcar-gen3() {
    sed -i -e '$a\idle-time=0\' ${D}/${sysconfdir}/xdg/weston/weston.ini
}

