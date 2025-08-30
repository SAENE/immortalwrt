#
# Copyright (C) 2006-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=util-linux
<<<<<<< HEAD
PKG_VERSION:=2.41.1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=@KERNEL/linux/utils/$(PKG_NAME)/v2.41
PKG_HASH:=be9ad9a276f4305ab7dd2f5225c8be1ff54352f565ff4dede9628c1aaa7dec57
PKG_CPE_ID:=cpe:/a:kernel:util-linux

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/meson.mk

MESON_HOST_ARGS += \
	$(if $(findstring y,$(YEAR_2038)),,-Dallow-32bit-time=true) \
	-Dauto_features=disabled \
	-Dbuild-hexdump=enabled \
	-Dbuild-libuuid=enabled \
	-Dncurses=enabled \
	-Dprogram-tests=false
=======
PKG_VERSION:=2.41

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=@KERNEL/linux/utils/$(PKG_NAME)/v2.41
PKG_HASH:=81ee93b3cfdfeb7d7c4090cedeba1d7bbce9141fd0b501b686b3fe475ddca4c6
PKG_CPE_ID:=cpe:/a:kernel:util-linux

PKG_FIXUP:=autoreconf

HOST_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/host-build.mk

HOST_CONFIGURE_ARGS += \
	--with-pic \
	--disable-shared \
	--disable-nls \
	--disable-all-programs \
	--enable-hexdump \
	--enable-libuuid \
	--without-util \
	--without-selinux \
	--without-audit \
	--without-udev \
	--without-ncursesw \
	--without-ncurses \
	--without-slang \
	--without-tinfo \
	--without-readline \
	--without-utempter \
	--without-cap-ng \
	--without-libz \
	--without-libmagic \
	--without-user \
	--without-btrfs \
	--without-systemd \
	--without-smack \
	--without-econf \
	--without-python \
	--without-cryptsetup

define Host/Uninstall
	-$(call Host/Compile/Default,uninstall)
endef
>>>>>>> 94392b39ec (稳定版本发布)

$(eval $(call HostBuild))
