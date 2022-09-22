DESCRIPTION = "Fan control for CCPF-SK board"
LICENSE = "GPL-2.0-only"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"

PACKAGE_ARCH = "${MACHINE_ARCH}"
COMPATIBLE_MACHINE = "(ulcb)"

inherit systemd
SYSTEMD_SERVICE_FILENAME = "${PN}.service"
SYSTEMD_SERVICE_${PN} = "${SYSTEMD_SERVICE_FILENAME}"
SYSTEMD_AUTO_ENABLE = "enable"

BRANCH = "main"
SRC_URI = " \
    git://github.com/ayumiayu/ccpfsk-fancontrol;branch=${BRANCH};protocol=https \
    file://${SYSTEMD_SERVICE_FILENAME} \
"
SRCREV = "365664b3985942fa9f36186a8e56fb6dfeb557c3"

S = "${WORKDIR}/git"

TARGET_CC_ARCH:append = " ${LDFLAGS}"

do_install:append () {
    install -d ${D}/${USRBINPATH}
    install -m 0755 ${B}/${PN} ${D}/${USRBINPATH}
    install -d ${D}/${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/${SYSTEMD_SERVICE_FILENAME} ${D}/${systemd_system_unitdir}
}

