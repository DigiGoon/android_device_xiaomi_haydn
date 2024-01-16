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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := haydn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2012K11G
PRODUCT_NAME := lineage_haydn

PRODUCT_SYSTEM_NAME := haydn_global
PRODUCT_SYSTEM_DEVICE := haydn

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="haydn_global-user 13 TKQ1.220829.002 V14.0.7.0.TKKMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/haydn_global/haydn:13/TKQ1.220829.002/V14.0.7.0.TKKMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# ProjectMatrixx
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true
MATRIXX_MAINTAINER := DigiGoon
MATRIXX_CHIPSET := SM8350
MATRIXX_BATTERY := 4520mah
MATRIXX_DISPLAY := 1920x1080
PRODUCT_NO_CAMERA := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_SUPPORTS_64_BIT_APPS := true
WITH_GAPPS := true
WITH_GMS := true

