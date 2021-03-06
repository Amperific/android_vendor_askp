# Copyright (C) 2012 ParanoidAndroid Project
# 2014 Modified by Nicholas Chen for ASKP
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

# Check for target product
ifeq (askp_grouper,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := askp_tvdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/askp/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Override AOSP build properties
PRODUCT_NAME := askp_grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.4.2/KOT49H/937116:user/release-keys"
PRIVATE_BUILD_DESC="nakasi-user 4.4.2 KOT49H 937116 release-keys"
endif
