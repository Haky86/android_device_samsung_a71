#
# Copyright (C) 2023 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PATH := device/samsung/a71

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_TARGET_VNDK_VERSION := 30
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.default \
    audio.r_submix.default \
    audio.usb.default \
    cplay \
    libaudioroute \
    libaudioutils \
    libtinyalsa \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay \

# Display
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/a71/a71-vendor.mk)
