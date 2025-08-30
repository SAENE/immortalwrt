#
# Copyright (C) 2013-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=rpcd
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL=$(PROJECT_GIT)/project/rpcd.git
<<<<<<< HEAD
PKG_MIRROR_HASH:=1628372b214012b2c1c686d03692ee84e04e033669a0269a06de6dac4d20e974
PKG_SOURCE_DATE:=2025-08-09
PKG_SOURCE_VERSION:=1905e096a8b722e67733cd4088026f571b27e521
=======
PKG_MIRROR_HASH:=081058ace6445fc8bf67e49f51e1bc87bf36bd0a38b34e6ff8976d7260bf2c9f
PKG_SOURCE_DATE:=2024-12-02
PKG_SOURCE_VERSION:=cc9a471c32e106fa9ee045540613fefdc31c5cd2
>>>>>>> 94392b39ec (稳定版本发布)
PKG_MAINTAINER:=Jo-Philipp Wich <jo@mein.io>

PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=

PKG_ASLR_PIE_REGULAR:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_BUILD_DIR)/include/rpcd $(1)/usr/include/
endef

define Package/rpcd/default
  SECTION:=utils
  CATEGORY:=Base system
  TITLE:=OpenWrt ubus RPC backend server
  DEPENDS:=+libubus +libubox
endef

define Package/rpcd
  $(Package/rpcd/default)
<<<<<<< HEAD
  DEPENDS+= +USE_GLIBC:libcrypt-compat +libuci +libblobmsg-json +libjson-c
=======
  DEPENDS+= +libuci +libblobmsg-json +libjson-c
>>>>>>> 94392b39ec (稳定版本发布)
endef

define Package/rpcd/description
 This package provides the UBUS RPC backend server to expose various
 functionality to frontend programs via JSON-RPC.
endef

define Package/rpcd/conffiles
/etc/config/rpcd
endef

TARGET_LDFLAGS += -lcrypt

define Package/rpcd/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/rpcd.init $(1)/etc/init.d/rpcd
	$(INSTALL_DIR) $(1)/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/rpcd $(1)/sbin/rpcd
	$(INSTALL_DIR) $(1)/usr/share/rpcd/acl.d
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/unauthenticated.json $(1)/usr/share/rpcd/acl.d/unauthenticated.json
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./files/rpcd.config $(1)/etc/config/rpcd
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/50-migrate-rpcd-ubus-sock.sh $(1)/etc/uci-defaults
endef


# 1: plugin name
# 2: additional dependencies
# 3: plugin title/description
# 4: extra dependencies
define BuildPlugin

  PKG_CONFIG_DEPENDS += CONFIG_PACKAGE_rpcd-mod-$(1)

  define Package/rpcd-mod-$(1)
    $(Package/rpcd/default)
    TITLE+= ($(1) plugin)
    DEPENDS+=rpcd $(2)
    EXTRA_DEPENDS:=$(4)
  endef

  define Package/rpcd-mod-$(1)/description
    $(3)
  endef

  define Package/rpcd-mod-$(1)/postinst
#!/bin/sh
[ -n "$$$${IPKG_INSTROOT}" ] || /etc/init.d/rpcd reload
  endef

  define Package/rpcd-mod-$(1)/install
	$(INSTALL_DIR) $$(1)/usr/lib/rpcd
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/$(1).so $$(1)/usr/lib/rpcd/
  endef

  $$(eval $$(call BuildPackage,rpcd-mod-$(1)))

endef

$(eval $(call BuildPackage,rpcd))
$(eval $(call BuildPlugin,file,,Provides ubus calls for file and directory operations.))
$(eval $(call BuildPlugin,rpcsys,,Provides ubus calls for sysupgrade and password changing.))
$(eval $(call BuildPlugin,iwinfo,+libiwinfo,Provides ubus calls for accessing iwinfo data.,libiwinfo (>=2023.01.21)))
$(eval $(call BuildPlugin,ucode,+libucode,Allows implementing plugins using ucode scripts.))
