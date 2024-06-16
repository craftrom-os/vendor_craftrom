# Inherit common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_mobile.mk)

PRODUCT_SIZE := full

# Include {Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

# Apps
PRODUCT_PACKAGES += \
    Eleven \
    Etar \
    Profiles \
    Recorder \
    Seedvault

ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

ifneq ($(TARGET_EXCLUDES_AUDIOFX),true)
PRODUCT_PACKAGES += \
    AudioFX
endif

# Don't dexpreopt prebuilts. (For GMS).
DONT_DEXPREOPT_PREBUILTS := true

# Google - GMS, Pixel
$(call inherit-product, vendor/google/gms/config.mk)
$(call inherit-product, vendor/google/pixel/config.mk)

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd

# Fonts
include vendor/lineage/config/fonts.mk

