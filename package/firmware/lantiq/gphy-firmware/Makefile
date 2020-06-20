#
# Copyright (C) 2020 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=gphy-firmware
PKG_RELEASE:=1
PKG_FLAGS:=nonshared

include $(INCLUDE_DIR)/package.mk

define Package/gphy-firmware-defaults
  SECTION:=firmware
  CATEGORY:=Firmware
  DEPENDS:=@TARGET_lantiq_xrx200
  DEFAULT:=n
  TITLE:=$(1)
endef

define Package/gphy-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) files/$(2) $(1)/lib/firmware/$(3)
endef

define Package/gphy-firmware-xrx200-rev1.1-fe
  $(call Package/gphy-firmware-defaults, xRx200 rev 1.1 FE PHY Firmware)
endef

define Package/gphy-firmware-xrx200-rev1.1-fe/description
  This package contains firmware for Fast Ethernet PHY integrated into xRx200 rev 1.1 SoCs.
endef

define Package/gphy-firmware-xrx200-rev1.1-fe/install
  $(call Package/gphy-firmware/install,$(1),xrx200_phy22f_a14.bin,xrx200_phy22f_a14.bin)
endef

define Package/gphy-firmware-xrx200-rev1.2-fe
  $(call Package/gphy-firmware-defaults, xRx200 rev 1.2 FE PHY Firmware)
endef

define Package/gphy-firmware-xrx200-rev1.2-fe/description
  This package contains firmware for Fast Ethernet PHY integrated into xRx200 rev 1.2 SoCs.
endef

define Package/gphy-firmware-xrx200-rev1.2-fe/install
  $(call Package/gphy-firmware/install,$(1),xrx200_phy22f_a22.bin,xrx200_phy22f_a22.bin)
endef

define Package/gphy-firmware-xrx200-rev1.1-ge
  $(call Package/gphy-firmware-defaults, xRx200 rev 1.1 GE PHY Firmware)
endef

define Package/gphy-firmware-xrx200-rev1.1-ge/description
  This package contains firmware for Gigabit Ethernet PHY integrated into xRx200 rev 1.1 SoCs.
endef

define Package/gphy-firmware-xrx200-rev1.1-ge/install
  $(call Package/gphy-firmware/install,$(1),xrx200_phy11g_a22.bin,xrx200_phy11g_a14.bin)
endef

define Package/gphy-firmware-xrx200-rev1.2-ge
  $(call Package/gphy-firmware-defaults, xRx200 rev 1.2 GE PHY Firmware)
endef

define Package/gphy-firmware-xrx200-rev1.2-ge/description
  This package contains firmware for Gigabit Ethernet PHY integrated into xRx200 rev 1.2 SoCs.
endef

define Package/gphy-firmware-xrx200-rev1.2-ge/install
  $(call Package/gphy-firmware/install,$(1),xrx200_phy11g_a22.bin,xrx200_phy11g_a22.bin)
endef

define Build/Compile

endef

$(eval $(call BuildPackage,gphy-firmware-xrx200-rev1.1-fe))
$(eval $(call BuildPackage,gphy-firmware-xrx200-rev1.2-fe))
$(eval $(call BuildPackage,gphy-firmware-xrx200-rev1.1-ge))
$(eval $(call BuildPackage,gphy-firmware-xrx200-rev1.2-ge))
