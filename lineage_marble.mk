#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_marble

#Devices Flags:
MATRIXX_CHIPSET := SM8450
MATRIXX_BATTERY := 5000mah
MATRIXX_DISPLAY := 1080x2400
MATRIXX_BUILD_TYPE := UnOfficial
MATRIXX_MAINTAINER := RetarReDD

#Build with Gapps:
WITH_GAPPS := true
TARGET_DISABLE_EPPE := true
# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

