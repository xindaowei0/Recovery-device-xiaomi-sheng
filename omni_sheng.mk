#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sheng device
$(call inherit-product, device/xiaomi/sheng/device.mk)

PRODUCT_DEVICE := sheng
PRODUCT_NAME := omni_sheng
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Pad 6S Pro 12.4
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sheng-user 13 TKQ1.221114.001 V816.0.8.0.UNXCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/sheng/sheng:13/TKQ1.221114.001/V816.0.8.0.UNXCNXM:user/release-keys
