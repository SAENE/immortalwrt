#
# Copyright (C) 2022 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=lz4
<<<<<<< HEAD
PKG_VERSION:=1.10.0

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/lz4/lz4.git
PKG_SOURCE_VERSION:=ebb370ca83af193212df4dcbadcc5d87bc0de2f0
PKG_MIRROR_HASH:=b168683fbeee4182f6f64bc216ad23f3b94edefbca9b8792dcd99ecd0a49f20f
=======
PKG_VERSION:=1.9.4

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/lz4/lz4/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=0b0e3aa07c8c063ddf40b082bdf7e37a1562bda40a0ff5272957f3e987e0e54b
>>>>>>> 94392b39ec (稳定版本发布)

PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE lib/LICENSE
PKG_CPE_ID:=cpe:/a:lz4_project:lz4

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/meson.mk

<<<<<<< HEAD
MESON_HOST_BUILD_DIR:=$(HOST_BUILD_DIR)/build/meson/openwrt-build
=======
MESON_HOST_BUILD_DIR:=$(HOST_BUILD_DIR)/contrib/meson/openwrt-build
>>>>>>> 94392b39ec (稳定版本发布)

# Always optimize for speed
HOST_CFLAGS := $(filter-out -O%,$(HOST_CFLAGS)) -O3

MESON_HOST_ARGS += \
	-Ddefault_library=static \
	-Ddebug-level=0 \
	-Dunstable=false \
	-Dprograms=true \
	-Dtests=false \
	-Dcontrib=false \
	-Dexamples=false

$(eval $(call HostBuild))
