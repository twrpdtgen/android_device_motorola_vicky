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

# Inherit from vicky device
$(call inherit-product, device/motorola/vicky/device.mk)

PRODUCT_DEVICE := vicky
PRODUCT_NAME := omni_vicky
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g72
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vicky_g_vext-user 12 T2SVS33.68-21-10-3 e8df0 release-keys"

BUILD_FINGERPRINT := motorola/vicky_g_vext/vicky:12/T2SVS33.68-21-10-3/e8df0:user/release-keys
