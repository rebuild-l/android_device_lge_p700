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
    BUILD_NUMBER=144808 \
    PRODUCT_NAME=p700 \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="p700-user 4.4.2 KVT49L 144808 release-keys" \
    BUILD_FINGERPRINT="lge/p700/4.4.2/KVT49L/144808:user/release-keys"

# Enable Torch
#PRODUCT_PACKAGES += Torch
