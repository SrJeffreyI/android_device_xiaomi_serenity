# Kernel Command Line
BOARD_KERNEL_CMDLINE := earlycon console=ttyS1,921600n8 loop.max_part=7 loglevel=1 log_buf_len=2M kpti=0 firmware_class.path=/odm/firmware,/vendor/firmware init=/init root=/dev/ram0 rw printk.devkmsg=on ftrace_dump_on_oops swiotlb=1 dummy_hcd.num=0 rcupdate.rcu_expedited=1 rcu_nocbs=0-7

# Kernel Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a75 # O T606 usa núcleos A75/A55

# Bootloader & Platform
TARGET_BOOTLOADER_BOARD_NAME := serenity
TARGET_BOARD_PLATFORM := ums9230

# Kernel Base e Offsets
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x05400000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_DTB_OFFSET := 0x01f00000

# Partitions Size
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 104857600
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RESCUEIMAGE_PARTITION_SIZE := 134217728
BOARD_FLASH_BLOCK_SIZE := 131072
