#############################################################
#
# tslib
#
TSLIB_VERSION:=860d69ca
TSLIB_SITE:=git://github.com/kergoth/tslib.git
TSLIB_AUTORECONF = YES
TSLIB_INSTALL_STAGING = YES
TSLIB_INSTALL_TARGET = YES
TSLIB_INSTALL_STAGING_OPTS = DESTDIR=$(STAGING_DIR) LDFLAGS=-L$(STAGING_DIR)/usr/lib install

TSLIB_CONF_OPTS = \
	--enable-shared	\
	--prefix=/usr	\
	--sysconfdir=/etc

$(eval $(autotools-package))
