include $(TOPDIR)/rules.mk

PKG_NAME:=gnulib
PKG_CPE_ID:=cpe:/a:gnu:$(PKG_NAME)
<<<<<<< HEAD

PKG_SOURCE_URL=git://git.git.savannah.gnu.org/$(PKG_NAME).git
PKG_SOURCE_DATE:=2025-07-01
PKG_SOURCE_VERSION:=a3151d456d6919c9066b54dc6f680452168165cf# # stable-202501
PKG_MIRROR_HASH:=b695d96e915ecd6c4551436f417cb2c0879aef4ef6318721c8d5cc86cb44ba9d
=======
PKG_VERSION:=c99c8d491850dc3a6e0b8604a2729d8bc5c0eff1# # stable-202401

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://git.savannah.gnu.org/cgit/$(PKG_NAME).git/snapshot
PKG_HASH:=8e6f4a907d9677b55fd452e1340a3e030a6f530b138d420c11975da33f086b1e
>>>>>>> 94392b39ec (稳定版本发布)

include $(INCLUDE_DIR)/host-build.mk

define Host/Configure
endef

define Host/Install
<<<<<<< HEAD
	$(call Host/Uninstall)
	$(INSTALL_DIR) $(1)/share/aclocal
	$(INSTALL_DATA) $(HOST_BUILD_DIR)/m4/*.m4 $(1)/share/aclocal/
	$(CP) $(HOST_BUILD_DIR)/ $(1)/share/gnulib/
	ln -sf ../share/gnulib/gnulib-tool $(STAGING_DIR_HOST)/bin/gnulib-tool
endef

define Host/Uninstall
=======
	$(INSTALL_DIR) $(1)/share/aclocal
	$(INSTALL_DATA) $(HOST_BUILD_DIR)/m4/*.m4 $(1)/share/aclocal/
	$(INSTALL_DIR) $(1)/share/gnulib
	$(CP) $(HOST_BUILD_DIR)/* $(1)/share/gnulib/
	ln -sf ../share/gnulib/gnulib-tool $(STAGING_DIR_HOST)/bin/gnulib-tool
endef

define Host/Clean
>>>>>>> 94392b39ec (稳定版本发布)
	rm -rf $(STAGING_DIR_HOST)/bin/gnulib-tool $(STAGING_DIR_HOST)/share/gnulib
endef

$(eval $(call HostBuild))
