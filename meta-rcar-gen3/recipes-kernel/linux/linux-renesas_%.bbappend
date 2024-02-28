FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SUPPORT_LTTNG = " \
    file://lttng.cfg \
"

SUPPORT_CSI_CAMERA = " \
    file://camera.cfg \
    file://imx219.cfg \
"

SRC_URI_append_ulcb = " \
    file://can.cfg \
    file://nvme.cfg \
    file://0001-dt-bindings-arm-renesas-Document-Renesas-CCPF-SK-boa.patch \
    file://0002-arm64-dts-renesas-Add-support-for-CCPF-SK-with-R-Car.patch \
    file://0003-arm64-dts-renesas-Add-support-for-CCPF-SK-with-R-Car.patch \
    file://0004-soc-renesas-rcar_s2ram-Add-new-support-for-S2RAM-exe.patch \
    file://0005-arm64-dts-renesas-Add-ext-interrupt-for-s2ram.patch \
    file://0006-arm64-dts-renesas-Add-support-for-CCPF-SK-with-R-Car.patch \
    file://0007-arm64-dts-renesas-Add-support-pwm0-for-CCPF-SK.patch \
    file://0008-PCI-rcar-Don-t-allocate-extra-memory-for-the-MSI-cap.patch \
    file://0009-PCI-rcar-Convert-to-MSI-domains.patch \
    file://0010-media-v4l2-async-workaround-for-RCAR-VIN.patch \
    file://0011-media-platform-rcar-vin-add-GREY-format.patch \
    file://0012-media-platform-rcar-vin-add-G-S_PARM-ioctl.patch \
    file://0013-media-i2c-imx219-Set-subdevice-fwnode.patch \
    file://0014-media-i2c-imx219-Set-8-bit-SBGGR-mode-by-default.patch \
    file://0015-media-rcar-vin-Fix-VNIS_REG-settings.patch \
    file://0016-media-i2c-imx219-Align-default-frame-width-to-32.patch \
    file://0017-kbuild-remove-unneeded-O-option-to-dtc.patch \
    file://0018-arm64-dts-renesas-Add-support-CSI-cameras-for-CCPF-S.patch \
    file://0019-arm64-dts-renesas-separate-node-which-depends-IMX219.patch \
    ${@oe.utils.conditional("USE_LTTNG", "1", "${SUPPORT_LTTNG}", "", d)} \
    ${@oe.utils.conditional("USE_CSI_CAMERA", "1", "${SUPPORT_CSI_CAMERA}", "", d)} \
"

ULCB_CCPF_SK_DTBO = " \
    ${@oe.utils.conditional("USE_CSI_CAMERA", "1", " \
        renesas/ulcb-ccpf-sk-cn12-imx219.dtbo \
        renesas/ulcb-ccpf-sk-cn13-imx219.dtbo \
    ", "", d)} \
"

KERNEL_DEVICETREE_append_h3ulcb = " \
    renesas/r8a77951-ulcb-ccpf-sk.dtb \
    renesas/r8a779m1-ulcb-ccpf-sk.dtb \
    ${ULCB_CCPF_SK_DTBO} \
"

KERNEL_DEVICETREE_append_m3ulcb = " \
    renesas/r8a77960-ulcb-ccpf-sk.dtb \
    renesas/r8a77961-ulcb-ccpf-sk.dtb \
    ${ULCB_CCPF_SK_DTBO} \
"
