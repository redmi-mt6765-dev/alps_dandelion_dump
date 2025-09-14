#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from dandelion device
$(call inherit-product, device/alps/dandelion/device.mk)

PRODUCT_DEVICE := dandelion
PRODUCT_NAME := lineage_dandelion
PRODUCT_BRAND := alps
PRODUCT_MODEL := k62v1_64_bsp
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k62v1_64_bsp-eng 10 QP1A.190711.020 mp1V91221 test-keys"

BUILD_FINGERPRINT := alps/full_k62v1_64_bsp/k62v1_64_bsp:10/QP1A.190711.020/mp1V91221:eng/test-keys
