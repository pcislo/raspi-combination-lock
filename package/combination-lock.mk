COMBINATIONLOCK_VERSION = 1.0
COMBINATIONLOCK = $(TOPDIR)/../../raspi-combination-lock/src
COMBINATIONLOCK_SITE_METHOD = local
COMBINATIONLOCK_DEPENDENCIES = wiringpi
define COMBINATIONLOCK_BUILD_CMDS
$(MAKE) $(TARGET_CONFIGURE_OPTS) combination-lock -C $(@D)
endef
define COMBINATIONLOCK_INSTALL_TARGET_CMDS 
$(INSTALL) -D -m 0755 $(@D)/combination-lock $(TARGET_DIR)/usr/bin
endef
COMBINATIONLOCK_LICENSE = GPL
$(eval $(generic-package))