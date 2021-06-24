# Device tree path
DEVICE_PATH := device/samsung/m21

# Bootloader
BOARD_VENDOR := samsung
TARGET_SOC := exynos9611
TARGET_BOOTLOADER_BOARD_NAME := universal9611
TARGET_USES_UEFI := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := exynos9611
TARGET_BOARD_PLATFORM_GPU := mali-g72
PLATFORM_VERSION := 11
PLATFORM_SECURITY_PATCH := 2021-06-01

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73
TARGET_CPU_SMP := true

# Secondary architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x01000000
BOARD_MKBOOTIMG_ARGS += --tags_offset 0x00000100
BOARD_MKBOOTIMG_ARGS += --header_version 2
BOARD_MKBOOTIMG_ARGS += --board SRPSL26A002RU

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Vendor seperation
TARGET_COPY_OUT_VENDOR := vendor

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 365
TW_DEFAULT_BRIGHTNESS := 219
TW_Y_OFFSET := 142
TW_H_OFFSET := -142
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_USE_SAMSUNG_HAPTICS := true
TW_INCLUDE_CRYPTO := false

# Dynamic Partition handling flags

# Makes twrp ignore "unable to update logical partition" error
IGNORE_UPDATE_LOGICAL_PARTITION_ERROR := true
# lets the dynamic partitions be wipable/resizable in twrp > wipe
ALLOW_LOGICAL_PARTITION_WIPE := true
# these dynamic partitions will get mounted as rw
BOARD_RW_DYNAMIC_PARTITIONS_LIST := \
    system \
    system_ext \
    vendor \
    product \
    odm

# SHRP Flags
SHRP_PATH := $(DEVICE_PATH)
SHRP_MAINTAINER := hendralize
SHRP_DEVICE_CODE := m21
SHRP_EDL_MODE := 0
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 1
SHRP_CUSTOM_FLASHLIGHT := true
SHRP_FONP_1 := /sys/devices/virtual/camera/flash/rear_flash
SHRP_FONP_2 :=
SHRP_FONP_3 :=
SHRP_FLASH_MAX_BRIGHTNESS := 1
SHRP_REC := /dev/block/platform/13520000.ufs/by-name/recovery
SHRP_STATUSBAR_RIGHT_PADDING := 40
SHRP_STATUSBAR_LEFT_PADDING := 40
SHRP_EXPRESS := true
SHRP_ALT_REBOOT := true
