DESCRIPTION = "Renesas BSP ROM Writer"

LICENSE = "GPL-2.0"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"

PACKAGE_ARCH = "${MACHINE_ARCH}"

inherit deploy

S = "${WORKDIR}/git"

BRANCH = "master"
SRC_URI = "git://github.com/morimoto/renesas-bsp-rom-writer.git;branch=${BRANCH}"
SRCREV = "32f66d2cf3e168adcb0366ed115cabdcb684f66b"

PV = "git${SRCPV}"

COMPATIBLE_MACHINE = "(ulcb)"

ALLOW_EMPTY_${PN} = "1"
ALLOW_EMPTY_${PN}-dev = "1"
ALLOW_EMPTY_${PN}-staticdev = "1"

SRC_URI_append = " \
    file://0001-Change-to-use-AArch64-flash-writer.patch \
"

# do_compile() nothing
do_compile[noexec] = "1"

# do_install() nothing
do_install[noexec] = "1"

do_deploy() {
    # Create deploy folder
    install -d ${DEPLOYDIR}

    # Copy to deploy folder
    rm -rf ${DEPLOYDIR}/${PN}
    cp -rpf ${S} ${DEPLOYDIR}
    rm -rf ${DEPLOYDIR}/git/.git
    mv -f ${DEPLOYDIR}/git ${DEPLOYDIR}/${PN}
}

addtask deploy before do_build after do_compile

