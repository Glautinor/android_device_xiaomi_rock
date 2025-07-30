#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from rock device
$(call inherit-product, device/xiaomi/rock/device.mk)

# Disable Eppe
TARGET_DISABLE_EPPE := true

PRODUCT_DEVICE := rock
PRODUCT_NAME := lineage_rock
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 11 Prime
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi_phone_global_ext4-user 14 UP1A.231005.007 V816.0.12.0.ULUMIXM release-keys" \
    BuildFingerprint=POCO/stone_p_global/stone:13/TP1A.220624.014/V816.0.12.0.ULUMIXM:user/release-keys

#Evolve
EVO_BUILD_TYPE := UNOFFICIAL
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_INCLUDE_ACCORD := false
TARGET_ENABLE_BLUR := true
WITH_GMS := false
#TARGET_USES_MINI_GAPPS := true
#TARGET_USES_PICO_GAPPS := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2408
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# OMX
TARGET_SUPPORTS_OMX_SERVICE := false

# Bypass charging node /sys/class/power_supply/battery/input_suspend
BYPASS_CHARGE_SUPPORTED := false
