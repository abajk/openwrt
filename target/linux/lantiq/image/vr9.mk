DEVICE_VARS += NETGEAR_BOARD_ID NETGEAR_HW_ID

define Device/dsa-migration
  DEVICE_COMPAT_VERSION := 1.1
  DEVICE_COMPAT_MESSAGE := Config cannot be migrated from swconfig to DSA
endef

define Device/bt_homehub-v5a
  $(Device/dsa-migration)
  $(Device/NAND)
  DEVICE_VENDOR := British Telecom (BT)
  DEVICE_MODEL := Home Hub 5
  DEVICE_VARIANT := Type A
  DEVICE_ALT0_VENDOR := British Telecom (BT)
  DEVICE_ALT0_MODEL := Business Hub 5
  DEVICE_ALT0_VARIANT := Type A
  DEVICE_ALT1_VENDOR := Plusnet
  DEVICE_ALT1_MODEL := Hub One
  BOARD_NAME := BTHOMEHUBV5A
  DEVICE_PACKAGES := kmod-owl-loader
  SUPPORTED_DEVICES += BTHOMEHUBV5A
endef
TARGET_DEVICES += bt_homehub-v5a
