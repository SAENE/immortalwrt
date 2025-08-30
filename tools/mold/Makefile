# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=mold
<<<<<<< HEAD
PKG_VERSION:=2.40.4
PKG_RELEASE:=1
=======
PKG_VERSION:=2.39.1
>>>>>>> 94392b39ec (稳定版本发布)

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL_FILE:=v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/rui314/mold/archive/refs/tags
<<<<<<< HEAD
PKG_HASH:=69414c702ec1084e1fa8ca16da24f167f549e5e11e9ecd5d70a8dcda6f08c249
=======
PKG_HASH:=231ea3643a14fe5b88478c97b68b31f7c975b57b247a81356ffd889d015b5cc1
>>>>>>> 94392b39ec (稳定版本发布)

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

CMAKE_HOST_OPTIONS += \
	-DMOLD_LTO=ON \
	-DMOLD_USE_SYSTEM_MIMALLOC=OFF \
	-DMOLD_USE_SYSTEM_TBB=OFF

$(eval $(call HostBuild))
