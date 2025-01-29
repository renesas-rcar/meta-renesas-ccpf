# Basic packages
IMAGE_INSTALL:append = " \
	can-utils \
	iproute2 \
	ccpfsk-fancontrol \
	nvme-cli \
	media-ctl \
"

# Add additional image type
IMAGE_FSTYPES:append = " wic.gz"

