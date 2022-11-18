# Copyright (C) 2020 The LineageOS Project
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

T210_FIRMWARE_PATH := vendor/nvidia/t210/rel-shield-r/firmware

# Firmware
ifneq ($(filter $(TARGET_TEGRA_KERNEL), 3.10 4.9),)
PRODUCT_COPY_FILES += \
    $(T210_FIRMWARE_PATH)/xusb/tegra210b01_xusb_firmware:recovery/root/lib/firmware/tegra21x_xusb_firmware \
    $(T210_FIRMWARE_PATH)/xusb/tegra210b01_xusb_firmware:recovery/root/lib/firmware/tegra210b01_xusb_firmware
else
PRODUCT_COPY_FILES += \
    $(T210_FIRMWARE_PATH)/xusb/tegra210b01_xusb_firmware:recovery/root/lib/firmware/nvidia/tegra210/xusb.bin \
    $(T210_FIRMWARE_PATH)/xusb/tegra210b01_xusb_firmware:recovery/root/lib/firmware/nvidia/tegra210b01/xusb.bin
endif
