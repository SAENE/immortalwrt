#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=coreutils
PKG_CPE_ID:=cpe:/a:gnu:coreutils
<<<<<<< HEAD
PKG_VERSION:=9.6

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@GNU/coreutils
PKG_HASH:=2bec616375002c92c1ed5ead32a092b174fe44c14bc736d32e5961053b821d84

HOST_BUILD_PARALLEL := 1

PKG_PROGRAMS:=chown cp date ginstall ln readlink realpath rmdir seq stat touch
=======
PKG_VERSION:=9.5

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@GNU/coreutils
PKG_HASH:=767ae6a22950ec42f3ba5f7c1de79dd27800ee8e9b8642da5dedb5974a1741e5

HOST_BUILD_PARALLEL := 1

PKG_PROGRAMS:=date readlink touch ln chown ginstall
>>>>>>> 94392b39ec (稳定版本发布)

include $(INCLUDE_DIR)/host-build.mk

export GNULIB_SRCDIR:=$(HOST_GNULIB_SRCDIR)

HOST_GNULIB_SKIP := \
<<<<<<< HEAD
	lib/iconv_open-aix.gperf \
	lib/iconv_open-hpux.gperf \
	lib/iconv_open-irix.gperf \
	lib/iconv_open-osf.gperf \
	lib/iconv_open-solaris.gperf \
	lib/iconv_open-zos.gperf
=======
	lib/nstrftime.c \
	lib/fprintftime.c \
	lib/fcntl.in.h \
	lib/locale.in.h
>>>>>>> 94392b39ec (稳定版本发布)

HOST_CONFIGURE_ARGS += \
	 --enable-install-program=$(subst $(space),$(comma),$(strip $(PKG_PROGRAMS)))

HOST_MAKE_FLAGS += \
<<<<<<< HEAD
	$(AM_TOOL_PATHS) AUTOPOINT="$(TRUE)" GTKDOCIZE="$(TRUE)" \
	am__CONFIG_DISTCLEAN_FILES= \
	MAINTAINERCLEANFILES='$$$$(filter-out lib/iconv_open% %.texi,$$$$(BUILT_SOURCES))' \
=======
	$(AM_TOOL_PATHS_FAKE) \
>>>>>>> 94392b39ec (稳定版本发布)
	PROGRAMS="$(patsubst %,src/%,$(PKG_PROGRAMS))" \
	LIBRARIES= MANS= SUBDIRS=.

define Host/Bootstrap
	( \
		cd $(HOST_BUILD_DIR); \
<<<<<<< HEAD
		$(AM_TOOL_PATHS) AUTOPOINT="$(TRUE)" GTKDOCIZE="$(TRUE)" \
=======
		$(AM_TOOL_PATHS_FAKE) \
>>>>>>> 94392b39ec (稳定版本发布)
		./bootstrap \
			--bootstrap-sync \
			--force \
			--no-git \
			--skip-po \
			--gnulib-srcdir=$(GNULIB_SRCDIR) \
	)
endef

define Host/Prepare
	$(call Host/Prepare/Default)
	$(if $(QUILT),,$(call Host/Bootstrap))
endef

define Host/Configure
	$(if $(QUILT),$(call Host/Bootstrap))
	$(foreach src,$(HOST_GNULIB_SKIP),mv -f $(HOST_BUILD_DIR)/$(src)~ $(HOST_BUILD_DIR)/$(src) || true; )
	$(call Host/Configure/Default)
<<<<<<< HEAD
	$(call Host/Uninstall)
	$(call Host/Compile/Default,lib/config.h)
=======
>>>>>>> 94392b39ec (稳定版本发布)
endef

define Host/Install
	$(INSTALL_DIR) $(1)/bin
<<<<<<< HEAD
	$(foreach prog,$(filter-out g%,$(PKG_PROGRAMS)),$(INSTALL_BIN) $(patsubst %,$(HOST_BUILD_DIR)/src/%,$(prog)) $(1)/bin/g$(prog); )
	$(foreach prog,$(filter g%,$(PKG_PROGRAMS)),$(INSTALL_BIN) $(patsubst %,$(HOST_BUILD_DIR)/src/%,$(prog)) $(1)/bin/$(prog); )
	$(foreach prog,$(filter-out g%,$(PKG_PROGRAMS)),g$(LN) g$(prog) $(1)/bin/$(prog); )
	$(foreach prog,$(filter g%,$(PKG_PROGRAMS)),g$(LN) $(prog) $(1)/bin/$(patsubst g%,%,$(prog)); )
endef

define Host/Uninstall
	#$(call Host/Compile/Default,uninstall) # Removes necessary symlinks
	-$(call Host/Compile/Default,maintainer-clean) # Clean bootstrap files from the release
=======
	$(INSTALL_BIN) $(patsubst %,$(HOST_BUILD_DIR)/src/%,$(PKG_PROGRAMS)) $(1)/bin/
	ln -sf ginstall $(1)/bin/install
endef

define Host/Uninstall
	rm -f $(STAGING_DIR_HOST)/bin/install
	-$(call Host/Compile/Default,uninstall)
>>>>>>> 94392b39ec (稳定版本发布)
endef

$(eval $(call HostBuild))
