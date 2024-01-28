#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from haydn device
$(call inherit-product, device/xiaomi/haydn/device.mk)

# Inherit some common ApolloOS stuff.
$(call inherit-product, vendor/apollo/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := haydn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2012K11G
PRODUCT_NAME := apollo_haydn

PRODUCT_SYSTEM_NAME := haydn_global
PRODUCT_SYSTEM_DEVICE := haydn

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="haydn_global-user 13 TKQ1.220829.002 V14.0.7.0.TKKMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/haydn_global/haydn:13/TKQ1.220829.002/V14.0.7.0.TKKMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# ApolloOS
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_64_BIT_APPS := true
WITH_GMS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
APOLLO_BUILD_VARIANT := gapps
TARGET_STOCK_GAPPS := true
TARGET_ENABLE_PIXEL_GOODIES := false
TARGET_SUPPORTS_QUICK_TAP := true

