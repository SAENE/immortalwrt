# SPDX-License-Identifier: GPL-2.0-only
ARCH:=mips
SUBTARGET:=rtl838x
<<<<<<< HEAD
CPU_TYPE:=24kc
=======
CPU_TYPE:=4kec
>>>>>>> 94392b39ec (稳定版本发布)
BOARD:=realtek
BOARDNAME:=Realtek MIPS RTL838X

define Target/Description
	Build firmware images for Realtek RTL838x based boards.
endef

FEATURES := $(filter-out mips16,$(FEATURES))
