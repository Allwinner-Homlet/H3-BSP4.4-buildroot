##############################################################
#
# mtop
#
#############################################################

MTOP_LICENSE = GPLv2


define MTOP_BUILD_CMDS
	cp -vfr package/mtop/mtop.sh $(@D)/mtop.sh
endef

define MTOP_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0655 $(@D)/mtop.sh $(TARGET_DIR)/usr/bin/mtop
endef

define MTOP_UNINSTALL_TARGET_CMDS
	rm -f $(TARGET_DIR)/usr/bin/mtop
endef


$(eval $(generic-package))
