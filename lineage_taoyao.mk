#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from taoyao device
$(call inherit-product, device/xiaomi/taoyao/device.mk)

# Inherit from common CrDroid configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_DISABLE_EPPE := true
WITH_GMS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_taoyao
PRODUCT_DEVICE := taoyao
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2203129G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="taoyao_global-user 13 RKQ1.211001.001 V816.0.11.0.ULIMIXM release-keys" \
    BuildFingerprint=Xiaomi/taoyao_global/taoyao:13/RKQ1.211001.001/V816.0.11.0.ULIMIXM:user/release-keys \
    DeviceProduct=taoyao \
    SystemName=taoyao_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
