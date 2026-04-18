$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Herdar especificações do dispositivo
$(call inherit-product, device/xiaomi/serenity/device.mk)

PRODUCT_DEVICE := serenity
PRODUCT_NAME := lineage_serenity
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi A5
PRODUCT_MANUFACTURER := xiaomi
