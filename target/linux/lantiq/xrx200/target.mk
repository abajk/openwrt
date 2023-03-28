ARCH:=mips
SUBTARGET:=xrx200
BOARDNAME:=XRX200
FEATURES+=atm nand ramdisk
CPU_TYPE:=24kc

DEFAULT_PACKAGES+=kmod-leds-gpio \
	kmod-gpio-button-hotplug

define Target/Description
	Lantiq XRX200
endef
