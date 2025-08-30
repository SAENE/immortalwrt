#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=fakeroot
<<<<<<< HEAD
PKG_VERSION:=1.37.1.2
=======
PKG_VERSION:=1.37
>>>>>>> 94392b39ec (稳定版本发布)
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)_$(PKG_VERSION).orig.tar.gz
PKG_SOURCE_URL:=@DEBIAN/pool/main/f/fakeroot
<<<<<<< HEAD
PKG_HASH:=959496928c8a676ec8377f665ff6a19a707bfad693325f9cc4a4126642f53224
=======
PKG_HASH:=9831cc912bc1da6dadac15699c5a07a82c00d6f0dd5c15ec02e20908dd527d3a
>>>>>>> 94392b39ec (稳定版本发布)
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/host-build.mk

HOST_CONFIGURE_VARS += \
	ac_cv_header_sys_capability_h=no \
	ac_cv_func_capset=no \
	CPP="$(HOSTCC) -E"

HOST_CONFIGURE_ARGS += \
	--with-ipc=tcp

define Host/Uninstall
	-$(call Host/Compile/Default,uninstall)
endef

$(eval $(call HostBuild))
