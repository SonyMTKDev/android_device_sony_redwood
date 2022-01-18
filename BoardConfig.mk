#
# Copyright 2020 The LineageOS Project.
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

-include device/sony/mt6757-common/BoardConfigCommon.mk

DEVICE_PATH := device/sony/redwood

# Assert
TARGET_OTA_ASSERT_DEVICE := XPERIA_XA1_ULTRA,redwood,xperia_xa1_ultra

# Kernel
TARGET_KERNEL_CONFIG := lineage_redwood_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
BOARD_HAS_NO_SELECT_BUTTON := true

# Device Specific Init
TARGET_INIT_VENDOR_LIB := libinit_redwood

# System Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
