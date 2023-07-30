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
$(call inherit-product, vendor/lineage/config/common.mk)

# Inherit from vicky device
$(call inherit-product, device/motorola/vicky/device.mk)

PRODUCT_DEVICE := vicky
PRODUCT_NAME := lineage_vicky
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g72
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vicky_g_vext-user 12 S3SV32.45-12-11 2c6a2c release-keys"

BUILD_FINGERPRINT := motorola/vicky_g_vext/vicky:12/S3SV32.45-12-11/2c6a2c:user/release-keys
