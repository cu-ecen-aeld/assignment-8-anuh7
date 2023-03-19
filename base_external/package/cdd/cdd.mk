#TODO: Fill up the contents below in order to reference your assignment 3 git contents
CDD_VERSION = cdc68006c5e1eea7542ef0e317834c8ffa82e03c
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CDD_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-anuh7.git
CDD_SITE_METHOD = git
CDD_GIT_SUBMODULES = YES

CDD_MODULE_SUBDIRS = aesd-char-driver/

# TODO adding all the dependencies.
define CDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/drivertest.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/assignment-test.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/sockettest.sh $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
