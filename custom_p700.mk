# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit from our custom product configuration
$(call inherit-product, vendor/custom/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p700/p700.mk)

PRODUCT_NAME := pa_p700

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusL7
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p700
PRODUCT_NAME := custom_p700
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P700
PRODUCT_MANUFACTURER := LGE

# override

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=u0_open_eu \
    BUILD_FINGERPRINT="lge/u0_open_EUR/u0:4.1.2/JZO54K/P700_V20a-EUR-V20a.20130321.085042:user/release-keys" \
    PRIVATE_BUILD_DESC="u0_open_EUR-user 4.1.2 JZO54K P700_V20a-EUR-XX.1363826923 release-keys"
