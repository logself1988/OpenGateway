# Thisgleboneblack_defconfig is a wrapper for buildroot

TOPDIR := $(shell pwd)
MAKE_BR = make -C buildroot BR2_EXTERNAL=$(TOPDIR)
CONFIG_FILE = buildroot/.config
USER_DL_DIR = $(TOPDIR)/dl

%_defconfig: $(TOPDIR)/configs/%_defconfig
	$(MAKE_BR) $@

all: $(CONFIG_FILE)
	$(MAKE_BR)

menuconfig: $(CONFIG_FILE)
	$(MAKE_BR) menuconfig

savedefconfig: $(CONFIG_FILE)
	$(MAKE_BR) savedefconfig

linux: $(CONFIG_FILE)
	$(MAKE_BR) linux

linux-menuconfig: $(CONFIG_FILE)
	$(MAKE_BR) linux-menuconfig

linux-savedefconfig: $(CONFIG_FILE)
	$(MAKE_BR) linux-savedefconfig

busybox-menuconfig: $(CONFIG_FILE)
	$(MAKE_BR) busybox-menuconfig

clean:
	$(MAKE_BR) clean

distclean:
	$(MAKE_BR) distclean
	
