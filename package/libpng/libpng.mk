################################################################################
#
# libpng
#
################################################################################

ifeq ($(BR2_PACKAGE_LIBPNG_1_6),y)
LIBPNG_VERSION = 1.6.25
LIBPNG_SERIES = 16
LIBPNG_SOURCE = libpng-$(LIBPNG_VERSION).tar.xz
else
ifeq ($(BR2_PACKAGE_LIBPNG_1_4),y)
LIBPNG_VERSION = 1.4.5
LIBPNG_SERIES = 14
LIBPNG_SOURCE = libpng-$(LIBPNG_VERSION).tar.bz2
endif
endif

LIBPNG_SITE = http://downloads.sourceforge.net/project/libpng/libpng${LIBPNG_SERIES}/$(LIBPNG_VERSION)
LIBPNG_LICENSE = libpng license
LIBPNG_LICENSE_FILES = LICENSE
LIBPNG_INSTALL_STAGING = YES
LIBPNG_DEPENDENCIES = host-pkgconf zlib
HOST_LIBPNG_DEPENDENCIES = host-pkgconf host-zlib
LIBPNG_CONFIG_SCRIPTS = libpng$(LIBPNG_SERIES)-config libpng-config
LIBPNG_CONF_OPTS = $(if $(BR2_ARM_CPU_HAS_NEON),--enable-arm-neon=yes,--enable-arm-neon=no)

$(eval $(autotools-package))
$(eval $(host-autotools-package))
