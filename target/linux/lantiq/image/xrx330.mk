define Device/dsa-migration
  DEVICE_COMPAT_VERSION := 1.1
  DEVICE_COMPAT_MESSAGE := Config cannot be migrated from swconfig to DSA
endef

define Device/dlink_dwr-966
  $(Device/NAND_preloader)
  DEVICE_VENDOR := D-Link
  DEVICE_MODEL := DWR-966
  SOC := xrx330
  LOADER_FLASH_OFFS := 0x31000
  DEVICE_PACKAGES := kmod-usb-dwc2 \
	xrx300-phy11g-firmware \
	-ltq-vdsl-vr9-vectoring-fw-installer \
	-kmod-ltq-vdsl-vr9-mei \
	-kmod-ltq-vdsl-vr9 \
	-kmod-ltq-atm-vr9 \
	-kmod-ltq-ptm-vr9 \
	-ltq-vdsl-vr9-app \
	-dsl-vrx200-firmware-xdsl-a \
	-dsl-vrx200-firmware-xdsl-b-patch \
	-ppp-mod-pppoa
endef
TARGET_DEVICES += dlink_dwr-966
