# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# CraftRomOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.custom.build.date=$(CUSTOM_BUILD_DATE ) \
    ro.custom.device=$(CRAFTROM_DEVICE) \
    ro.custom.version=$(CUSTOM_VERSION_PROP) \
    ro.craftrom.maintainer=$(CUSTOM_MAINTAINER) \
    ro.craftrom.build_type=$(CUSTOM_BUILD_TYPE) \
    ro.modversion=$(LINEAGE_VERSION) \
    ro.lineagelegal.url=https://craft-rom.pp.ua/terms-of-use

# LineageOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.version=$(LINEAGE_VERSION) \
    ro.lineage.releasetype=$(LINEAGE_BUILDTYPE) \
    ro.lineage.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)

# LineageOS Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.display.version=$(LINEAGE_DISPLAY_VERSION)

# LineageOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
