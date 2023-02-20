# meta-renesas-ccpf/meta-rcar-gen3

This layer provides the configuration to use CCPF SK board with R-Car Starter Kit

## Dependencies

This layer depends on:

* URI: git://git.yoctoproject.org/poky
  * branch: dunfell
  * revision: 74b22db6879b388d700f61e08cb3f239cf940d18

* URI: https://github.com/renesas-rcar/meta-renesas
  * layers; meta-rcar-gen3
  * branch: dunfell
  * revision: db07324cef9f09cfccafb36f05b8159421057af5

* URI: git://git.openembedded.org/meta-openembedded
  * layers: meta-oe, meta-python
  * branch: dunfell
  * revision: 814eec96c2a29172da57a425a3609f8b6fcc6afe

## Patches

Please submit any patches against the meta-renesas-ccpf/meta-rcar-gen3 layer to the the maintainers:

* Maintainer: Tomohiro Komagata <tomohiro.komagata.aj at renesas.com>
* Maintainer: Yuya Hamamachi <yuya.hamamachi.sx at renesas.com>

## Donwload all layers Using repo

```
repo init -b dunfell -m dunfell.xml -u https://github.com/renesas-rcar/meta-renesas-ccpf
repo sync
```

## Quick Start

Quick procedure to bring up:
1. TEMPLATECONF=$PWD/meta-renesas-ccpf/meta-rcar-gen3/docs/sample/conf/${h3ulcb|m3ulcb}-ccpf-sk/bsp/ \
   source poky/oe-init-build-env rcar-build
2. bitbake core-image-minimal
3. Prepare a SD card and set the u-boot environment variables. Please refer the [R-Car page on eLinux Wiki](https://elinux.org/R-Car/Boards/Yocto-Gen3/v5.1.0#Running_Yocto_images).
4. Boot your R-Car Starter Kit.	

Additional information:
* [Quick startup guide](https://elinux.org/R-Car/Boards/CCPF-SK/GettingStarted/Linux) for quick start CCPF-SK within 30 minutes.
* [Yocto page](https://elinux.org/R-Car/Boards/CCPF-SK/Yocto-Gen3) for steps necessary for building and running a Yocto image.

## Supported Boards/Machines

- Renesas Electronics Corporation. R-Car Starter Kit premier(H3ULCB) (R8A7795) on the [CCPF SK board](https://elinux.org/R-Car/Boards/CCPF-SK)
- Renesas Electronics Corporation. R-Car Starter Kit pro(M3ULCB) (R8A7796) on the [CCPF SK board](https://elinux.org/R-Car/Boards/CCPF-SK)
