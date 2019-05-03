SMARC_SAL28_RCW_VERSION = ede836b4c1a0ccaa78bcc46da1f3cae2dd3027e6
SMARC_SAL28_RCW_SITE = $(call github,kontron,rcw-smarc-sal28,$(SMARC_SAL28_RCW_VERSION))
SMARC_SAL28_RCW_LICENSE = BSD-2-Clause
SMARC_SAL28_RCW_LICENSE_FILES = COPYING
SMARC_SAL28_RCW_INSTALL_TARGET = NO
SMARC_SAL28_RCW_INSTALL_IMAGES = YES

SMARC_SAL28_RCW_VARIANT = $(call qstrip,$(BR2_PACKAGE_SMARC_SAL28_RCW_VARIANT))

define SMARC_SAL28_RCW_INSTALL_IMAGES_CMDS
	cp $(@D)/sl28-$(SMARC_SAL28_RCW_VARIANT).bin $(BINARIES_DIR)/rcw.bin
	mkdir $(BINARIES_DIR)/rcw
	cp $(@D)/sl28-*.bin $(BINARIES_DIR)/rcw/
endef

$(eval $(generic-package))
