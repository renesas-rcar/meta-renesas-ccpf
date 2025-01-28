# Basic packages
IMAGE_INSTALL:append = " \
	can-utils \
	iproute2 \
	ccpfsk-fancontrol \
	nvme-cli \
"

# Add additional image type
IMAGE_FSTYPES:append = " wic.gz"

