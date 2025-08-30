ARCH:=aarch64
BOARDNAME:=NXP i.MX with Cortex-A53 (ARM64)
CPU_TYPE:=cortex-a53
KERNELNAME:=Image dtbs
<<<<<<< HEAD
FEATURES+=dt-overlay
=======
>>>>>>> 94392b39ec (稳定版本发布)

define Target/Description
	Build firmware images for NXP i.MX (Cortex-A53) based boards.
endef
