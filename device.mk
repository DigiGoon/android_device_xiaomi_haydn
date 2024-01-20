#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8350-common
$(call inherit-product, device/xiaomi/sm8350-common/common.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/mixer_paths.xml \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_dynamic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/mixer_paths_overlay_dynamic.xml \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_static.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/mixer_paths_overlay_static.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/sound_trigger_platform_info.xml

# Camera
PRODUCT_PACKAGES += \
    libshim_megvii

# FaceSense
PRODUCT_SYSTEM_PROPERTIES += \
    ro.face.sense_service.camera_id=1

# Haptics
PRODUCT_VENDOR_PROPERTIES += \
    sys.haptic.motor=linear \
    sys.haptic.infinitelevel=true \
    sys.haptic.dynamiceffect=true \
    sys.haptic.dynamiceffect.richtap=true \
    sys.haptic.down.weak=0 \
    sys.haptic.down.normal=2 \
    sys.haptic.down.strong=5 \
    sys.haptic.down=5,2 \
    sys.haptic.tap.normal=3,2 \
    sys.haptic.tap.light=5,2 \
    sys.haptic.flick=5,2 \
    sys.haptic.flick.light=7,2 \
    sys.haptic.switch=9,2 \
    sys.haptic.mesh.heavy=8,2 \
    sys.haptic.mesh.normal=5,2 \
    sys.haptic.mesh.light=5,1 \
    sys.haptic.long.press=0,1 \
    sys.haptic.popup.normal=6,2 \
    sys.haptic.popup.light=6,1 \
    sys.haptic.pickup=2,2 \
    sys.haptic.scroll.edge=7,0 \
    sys.haptic.trigger.drawer=2,0 \
    sys.haptic.hold=4,0 \
    sys.haptic.runin=13 \
    sys.haptic.ignoreWhenCamera=true

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.haydn.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.haydn.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Overlays-RRO
PRODUCT_PACKAGES += \
    HaydnCNSettingsProviderOverlay \
    HaydnCNWifiOverlay \
    HaydnGLSettingsProviderOverlay \
    HaydnGLWifiOverlay \
    HaydnINSettingsProviderOverlay \
    HaydnINWifiOverlay \
    HaydnproCNSettingsProviderOverlay \
    HaydnproCNWifiOverlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/haydn/haydn-vendor.mk)

# Call the MiuiCamera setup
$(call inherit-product-if-exists, vendor/xiaomi/haydn-miuicamera/products/miuicamera.mk)
