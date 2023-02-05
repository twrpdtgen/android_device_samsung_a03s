#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a03s device
$(call inherit-product, device/samsung/a03s/device.mk)

PRODUCT_DEVICE := a03s
PRODUCT_NAME := omni_a03s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A037M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a03sub-user 12 SP1A.210812.016 A037MUBU3CVL1 release-keys"

BUILD_FINGERPRINT := samsung/a03sub/a03s:12/SP1A.210812.016/A037MUBU3CVL1:user/release-keys
