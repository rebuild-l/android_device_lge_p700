#
# Copyright 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p700/device.mk)

PRODUCT_AAPT_CONFIG := normal hdpi

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p700
PRODUCT_NAME := full_p700
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P700
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

# trebuchet
PRODUCT_PACKAGES += Trebuchet

# Leds
PRODUCT_PACKAGES += Leds

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=144808 \
    PRODUCT_NAME=p700 \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="p700-user 4.4.2 KVT49L 144808 release-keys" \
    BUILD_FINGERPRINT="lge/p700/4.4.2/KVT49L/144808:user/release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusL7
PRODUCT_VERSION_DEVICE_SPECIFIC :=


