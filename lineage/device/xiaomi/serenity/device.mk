LOCAL_PATH := device/xiaomi/serenity

# Copiar o kernel extraído para a build
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel
