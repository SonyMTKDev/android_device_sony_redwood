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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from redwood device
$(call inherit-product, device/sony/redwood/device.mk)

# Inherit from common device
$(call inherit-product, device/sony/mt6757-common/mt6757.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit languages full.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := SONY
PRODUCT_DEVICE := redwood
PRODUCT_NAME := lineage_redwood
PRODUCT_BRAND := SONY
PRODUCT_MODEL := XPERIA XA1 Ultra
PRODUCT_MANUFACTURER := SONY

PRODUCT_GMS_CLIENTID_BASE := android-sony

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=redwood \
   PRIVATE_BUILD_DESC="G3221-user 8.0.0 48.1.A.2.112 1877064199 release-keys"

BUILD_FINGERPRINT := "Sony/G3221/G3221:8.0.0/48.1.A.2.112/1877064199:user/release-keys"
