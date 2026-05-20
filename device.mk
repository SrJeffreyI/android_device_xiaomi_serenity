#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
PRODUCT_SHIPPING_API_LEVEL := 35

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Kernel
PRODUCT_ENABLE_UFFD_GC := true

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Rootdir
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.cali:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.cali \
    $(LOCAL_PATH)/rootdir/etc/fstab.serenity:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.serenity \
    $(LOCAL_PATH)/rootdir/etc/fstab.enableswap:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.enableswap \
    $(LOCAL_PATH)/rootdir/etc/init.cali.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.cali.rc \
    $(LOCAL_PATH)/rootdir/etc/init.ram.gms.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.ram.gms.rc \
    $(LOCAL_PATH)/rootdir/etc/init.ram.native.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.ram.native.rc \
    $(LOCAL_PATH)/rootdir/etc/init.ram.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.ram.rc \
    $(LOCAL_PATH)/rootdir/etc/init.serenity.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.serenity.rc \
    $(LOCAL_PATH)/rootdir/etc/init.serenity.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.serenity.usb.rc \
    $(LOCAL_PATH)/rootdir/etc/init.socmodel.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.socmodel.rc \
    $(LOCAL_PATH)/rootdir/etc/init.storage.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.storage.rc \
    $(LOCAL_PATH)/rootdir/etc/init.zramwb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.zramwb.rc

PRODUCT_PACKAGES += \
    log_to_csv.sh \
    loading.sh \
    para.sh \
    total.sh \
    create_splloader_dual_slot_byname_path.sh \
    idlefast.sh \
    init.insmod.sh \
    speedrestrictor.sh \
    swappiness.sh \
    trafficshow.sh \
    zramwb.sh

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the proprietary files
$(call inherit-product, vendor/xiaomi/serenity/serenity-vendor.mk)

# Modem & DSP Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/l_modem.img:install/l_modem.img \
    $(LOCAL_PATH)/prebuilts/l_gdsp.img:install/l_gdsp.img \
    $(LOCAL_PATH)/prebuilts/l_agdsp.img:install/l_agdsp.img \
    $(LOCAL_PATH)/prebuilts/l_ldsp.img:install/l_ldsp.img \
    $(LOCAL_PATH)/prebuilts/pm_sys.img:install/pm_sys.img

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/xiaomi/serenity/proprietary/vendor/firmware,$(TARGET_COPY_OUT_VENDOR)/firmware)
