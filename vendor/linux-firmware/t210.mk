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

T210_FIRMWARE_PATH := kernel/nvidia/linux-firmware

DOWNSTREAM_BRANCH    := rel-shield-r
T210_DOWNSTREAM_PATH := vendor/nvidia/t210/$(DOWNSTREAM_BRANCH)/firmware

# GPU firmware
PRODUCT_COPY_FILES += \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/acr/bl.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/acr/bl.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/acr/ucode_load.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/acr/ucode_load.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/fecs_bl.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/gr/fecs_bl.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/fecs_data.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/gr/fecs_data.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/fecs_inst.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/gr/fecs_inst.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/fecs_sig.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/gr/fecs_sig.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/gpccs_data.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/gr/gpccs_data.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/gpccs_data.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/gr/gpccs_data.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/sw_bundle_init.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/gr/sw_bundle_init.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm200/gr/sw_method_init.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/gr/sw_method_init.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/sw_ctx.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/gr/sw_ctx.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/sw_nonctx.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/gr/sw_nonctx.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/pmu/desc.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/pmu/desc.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/pmu/image.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/pmu/image.bin \
    $(T210_FIRMWARE_PATH)/nvidia/gm20b/pmu/sig.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/gm20b/pmu/sig.bin

# General firmware
PRODUCT_COPY_FILES += \
    $(T210_DOWNSTREAM_PATH)/tegra21x/nvhost_nvdec020_ns.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra210/nvdec.bin \
    $(T210_DOWNSTREAM_PATH)/tegra21x/nvhost_nvenc050.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra210/nvenc.bin \
    $(T210_DOWNSTREAM_PATH)/tegra21x/nvhost_nvjpg010.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra210/nvjpg.bin \
    $(T210_FIRMWARE_PATH)/nvidia/tegra210/vic04_ucode.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra210/vic04_ucode.bin \
    $(T210_FIRMWARE_PATH)/nvidia/tegra210/xusb.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra210/xusb.bin \
    $(T210_DOWNSTREAM_PATH)/xusb/tegra210b01_xusb_firmware:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra210b01/xusb.bin


# Recovery / Boot Ramdisk
PRODUCT_COPY_FILES += \
    $(T210_FIRMWARE_PATH)/nvidia/tegra210/xusb.bin:recovery/root/lib/firmware/nvidia/tegra210/xusb.bin \
    $(T210_DOWNSTREAM_PATH)/xusb/tegra210b01_xusb_firmware:recovery/root/lib/firmware/nvidia/tegra210b01/xusb.bin \
    $(T210_FIRMWARE_PATH)/nvidia/tegra210/xusb.bin:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/nvidia/tegra210/xusb.bin \
    $(T210_DOWNSTREAM_PATH)/xusb/tegra210b01_xusb_firmware:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/nvidia/tegra210b01/xusb.bin
