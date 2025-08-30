ARCH:=aarch64
SUBTARGET:=filogic
BOARDNAME:=Filogic 8x0 (MT798x)
CPU_TYPE:=cortex-a53
<<<<<<< HEAD
DEFAULT_PACKAGES += fitblk kmod-crypto-hw-safexcel wpad-openssl uboot-envtools bridger
=======
DEFAULT_PACKAGES += fitblk kmod-phy-aquantia kmod-crypto-hw-safexcel wpad-openssl uboot-envtools bridger
>>>>>>> 94392b39ec (稳定版本发布)
KERNELNAME:=Image dtbs
DEFAULT_PROFILE:=openwrt_one

define Target/Description
	Build firmware images for MediaTek Filogic ARM based boards.
endef
