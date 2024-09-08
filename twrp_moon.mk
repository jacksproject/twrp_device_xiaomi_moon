#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from moon device
$(call inherit-product, device/xiaomi/moon/device.mk)

PRODUCT_DEVICE := moon
PRODUCT_NAME := twrp_moon
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO M6
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := moon

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
