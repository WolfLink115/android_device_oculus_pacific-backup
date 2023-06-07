#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oculus/pacific

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Another common config inclusion
#$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from pacific device
$(call inherit-product, device/oculus/pacific/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := oculus
PRODUCT_DEVICE := pacific
PRODUCT_MODEL := Oculus Go
PRODUCT_MANUFACTURER := oculus
PRODUCT_NAME := lineage_pacific
PRODUCT_PLATFORM := msm8996

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vr_pacific-user 7.1.1 NGI77B 20480400000200000 release-keys" \
    TARGET_DEVICE="pacific" \
    PRODUCT_NAME="pacific"

BUILD_FINGERPRINT := oculus/vr_pacific/pacific:7.1.1/NGI77B/20480400000200000:user/release-keys

-include vendor/oculus/pacific/BoardConfigVendor.mk
