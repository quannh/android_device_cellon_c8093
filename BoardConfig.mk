USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/cellon/c8093/BoardConfigVendor.mk
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_HAVE_BLUETOOTH := true

BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := wlan0
WIFI_DRIVER_MODULE_PATH     := "/ar6000.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "ar6000"

TARGET_NO_BOOTLOADER := true
#TARGET_NO_RECOVERY := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := c8093

TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_OTA_ASSERT_DEVICE := c8093

BOARD_KERNEL_CMDLINE := mem=212M console=ttyDCC0 androidboot.hardware=qcom g_android.product_id=0xF000
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0a000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x08700000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/cellon/c8093/kernel

#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/cellon/c8093/recovery_ui.c

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

BOARD_NO_RGBX_8888 := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

TARGET_USES_OLD_LIBSENSORS_HAL:=true

JS_ENGINE := v8

TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBRIL := true

#BOARD_HAS_NO_SELECT_BUTTON := true

#BOARD_GPS_LIBRARIES := libloc_api
# to enable the GPS HAL
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := c8093
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
