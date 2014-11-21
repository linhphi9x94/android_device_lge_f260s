#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include device/lge/vu2-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := device/lge/f260s/include

# BOARD_KERNEL_CMDLINE := vmalloc=600M console=ttyHSL0,115200,n8 lpj=67677 user_debug=31 msm_rtb.filter=0x0 ehci-hcd.park=3 coresight-etm.boot_enable=0 androidboot.hardware=geefhd
# BOARD_KERNEL_CMDLINE := vmalloc=520M console=ttyHSL0,115200,n8 androidboot.hardware=geefhd lpj=67668
BOARD_KERNEL_CMDLINE := vmalloc=600M  console=ttyHSL0,115200,n8 androidboot.hardware=fx1sk user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 lpj=67741
TARGET_KERNEL_CONFIG := fx1sk-perf_defconfig
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/lge/f260s/bluetooth/vnd_f260s.txt

TARGET_BOOTLOADER_BOARD_NAME := fx1sk
TARGET_BOOTLOADER_NAME=F260S
BOARD_USES_LEGACY_ALSA_AUDIO :=true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/f260s/bluetooth

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcmdhd_apsta.bin"

TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_23x41.h\"
TARGET_RECOVERY_FSTAB = device/lge/f260s/fstab.fx1sk
ENABLE_LOKI_RECOVERY := true
ENABLE_LOKI := true
BOARD_RECOVERY_SWIPE := true


# Camera
# BOARD_NEEDS_MEMORYHEAPION := true

# BOARD_USE_SECTVOUT :=true
COMMON_GLOBAL_CFLAGS += -DLG_CAMERA_HARDWARE
# COMMON_GLOBAL_CFLAGS += -DNO_UPDATE_PREVIEW
-include vendor/lge/f260s/BoardConfigVendor.mk

BOARD_SEPOLICY_DIRS += \
        device/lge/f260s/sepolicy


BOARD_SEPOLICY_UNION := \
        app.te \
        bluetooth.te \
        device.te \
        domain.te \
        drmserver.te \
        file.te \
        file_contexts \
        hci_init.te \
        init_shell.te \
        keystore.te \
        mediaserver.te \
        kickstart.te \
        nfc.te \
        rild.te \
        surfaceflinger.te \
        system.te \
        ueventd.te \
        wpa.te

TARGET_OTA_ASSERT_DEVICE := f260s

TARGET_RELEASETOOLS_EXTENSIONS := device/lge/vu2-common/loki

COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'
