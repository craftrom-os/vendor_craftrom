PRODUCT_VERSION_MAJOR = 14
PRODUCT_VERSION_MINOR = 0

CUSTOM_VERSION_PROP := uther
CUSTOM_BUILD_TYPE ?= COMMUNITY
CUSTOM_MAINTAINER ?= UNKNOWN

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)

# Internal version
CRAFT_VERSION := CraftRomOS_$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)-$(LINEAGE_BUILD)

# Display version
LINEAGE_DISPLAY_VERSION := CraftRomOS--$(LINEAGE_BUILD)-v$(CUSTOM_VERSION_PROP)
