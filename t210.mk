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

TARGET_TEGRA_VERSION         := t210
TARGET_TEGRA_FIRMWARE_BRANCH ?= rel-shield-r

# Properties
include device/nvidia/t210-common/properties.mk

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += device/nvidia/t210-common

PRODUCT_COPY_FILES += \
    device/nvidia/t210-common/initfiles/init.t210.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.t210.rc \
    device/nvidia/t210-common/initfiles/init.t210_common.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.t210_common.rc \
    device/nvidia/tegra-common/initfiles/init.tlk.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.tlk.rc \
    device/nvidia/t210-common/initfiles/ueventd.t210ref.rc:$(TARGET_COPY_OUT_VENDOR)/etc/ueventd.rc

include device/nvidia/tegra-common/tegra.mk
