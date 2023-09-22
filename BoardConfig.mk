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

BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true

DEVICE_PATH := device/samsung/a71

# Assert
TARGET_OTA_ASSERT_DEVICE := a71

# Board
TARGET_BOARD_NAME := SRPSF18B008

# Security Patch Level
VENDOR_SECURITY_PATCH := 2022-09-01

# Get non-open-source specific aspects
include vendor/samsung/a71/BoardConfigVendor.mk
