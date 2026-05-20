#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from serenity device
$(call inherit-product, device/xiaomi/serenity/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := serenity
PRODUCT_NAME := lineage_serenity
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := serenity
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="serenity_global-user 15 AP3A.240905.015.A2 A15.0.26.0.VGWMIXM release-keys" \
    BuildFingerprint=Redmi/serenity/serenity:15/AP3A.240905.015.A2/A15.0.26.0.VGWMIXM:user/release-keys
