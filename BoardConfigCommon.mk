#
# Copyright (C) 2018 The LineageOS Project
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

include build/make/target/board/generic_arm64_a/BoardConfig.mk

VENDOR_PATH := device/huawei/kirin970-common

# Platform
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_NO_KERNEL := false
TARGET_PREBUILT_KERNEL := /dev/null

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(VENDOR_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
TARGET_CAMERA_NEEDS_ADD_STATES_IN_ENUMERATE := true

# Extended Filesystem Support
TARGET_EXFAT_DRIVER := exfat

# System themes
TARGET_RRO_OUT_SYSTEM := true

# Display
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2080000U

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3707764736
BOARD_CACHEIMAGE_PARTITION_SIZE := 16777216

# Properties
TARGET_SYSTEM_PROP := $(VENDOR_PATH)/system.prop

# Radio
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# Recovery
#BOARD_PROVIDES_BOOTLOADER_MESSAGE := true
TARGET_RECOVERY_FSTAB := $(VENDOR_PATH)/rootdir/etc/fstab.kirin970

# Release tools
TARGET_RELEASETOOLS_EXTENSIONS := $(VENDOR_PATH)/releasetools

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(VENDOR_PATH)/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(VENDOR_PATH)/sepolicy/public

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/lib64/libdisplayengineservice.so|libshims_hwsmartdisplay_jni.so \
    /system/lib64/libhwsmartdisplay_jni.so|libshims_hwsmartdisplay_jni.so \
    /vendor/bin/hw/vendor.huawei.hardware.hisupl@1.0-service|libshims_hisupl.so

# vintf
DEVICE_FRAMEWORK_MANIFEST_FILE := $(VENDOR_PATH)/framework_manifest.xml
