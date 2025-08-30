include $(TOPDIR)/rules.mk

PKG_NAME:=wireless-regdb
<<<<<<< HEAD
PKG_VERSION:=2025.07.10
=======
PKG_VERSION:=2025.02.20
>>>>>>> 94392b39ec (稳定版本发布)
PKG_RELEASE:=1
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=@KERNEL/software/network/wireless-regdb/
<<<<<<< HEAD
PKG_HASH:=a8340bcdcd1b5db6c79149879d122b170f3bb075381718d4f429ad831a6fa28d
=======
PKG_HASH:=57f8e7721cf5a880c13ae0c202edbb21092a060d45f9e9c59bcd2a8272bfa456
>>>>>>> 94392b39ec (稳定版本发布)

PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>

include $(INCLUDE_DIR)/package.mk

define Package/wireless-regdb
  PKGARCH:=all
  SECTION:=firmware
  CATEGORY:=Firmware
  URL:=https://git.kernel.org/pub/scm/linux/kernel/git/wens/wireless-regdb.git/
  TITLE:=Wireless Regulatory Database
endef

define Build/Compile
	$(STAGING_DIR_HOST)/bin/$(PYTHON) $(PKG_BUILD_DIR)/db2fw.py $(PKG_BUILD_DIR)/regulatory.db $(PKG_BUILD_DIR)/db.txt
endef

define Package/wireless-regdb/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(CP) $(PKG_BUILD_DIR)/regulatory.db $(1)/lib/firmware/
endef

$(eval $(call BuildPackage,wireless-regdb))
