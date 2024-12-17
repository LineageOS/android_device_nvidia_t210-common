# Copyright (C) 2020-2024 The LineageOS Project
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

LOCAL_PATH := device/nvidia/t210-common/vendor/rel-shield-r
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

T210_FIRMWARE_PATH := vendor/nvidia/t210/rel-shield-r/firmware

# Audio firmware
PRODUCT_COPY_FILES += \
    $(T210_FIRMWARE_PATH)/nvaacdec.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvaacdec.elf \
    $(T210_FIRMWARE_PATH)/nvadma.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvadma.elf \
    $(T210_FIRMWARE_PATH)/nvadma_tx.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvadma_tx.elf \
    $(T210_FIRMWARE_PATH)/nvapm.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvapm.elf \
    $(T210_FIRMWARE_PATH)/nvmp3dec.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvmp3dec.elf \
    $(T210_FIRMWARE_PATH)/nvoice.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvoice.elf \
    $(T210_FIRMWARE_PATH)/nvspkprot.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvspkprot.elf \
    $(T210_FIRMWARE_PATH)/nvsrc.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvsrc.elf

# GPU firmware
PRODUCT_COPY_FILES += \
    $(T210_FIRMWARE_PATH)/gm20b/fecs.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gm20b/fecs.bin \
    $(T210_FIRMWARE_PATH)/gm20b/fecs_sig.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gm20b/fecs_sig.bin \
    $(T210_FIRMWARE_PATH)/gm20b/gpccs.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gm20b/gpccs.bin \
    $(T210_FIRMWARE_PATH)/gm20b/gpmu_ucode.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gm20b/gpmu_ucode.bin \
    $(T210_FIRMWARE_PATH)/gm20b/gpmu_ucode_desc.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gm20b/gpmu_ucode_desc.bin \
    $(T210_FIRMWARE_PATH)/gm20b/gpmu_ucode_image.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gm20b/gpmu_ucode_image.bin \
    $(T210_FIRMWARE_PATH)/gm20b/gpu2cde.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gm20b/gpu2cde.bin \
    $(T210_FIRMWARE_PATH)/gm20b/NETB_img.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gm20b/NETB_img.bin \
    $(T210_FIRMWARE_PATH)/gm20b/nv_acr_ucode_dbg.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gm20b/nv_acr_ucode_dbg.bin \
    $(T210_FIRMWARE_PATH)/gm20b/nv_acr_ucode_prod.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gm20b/nv_acr_ucode_prod.bin \
    $(T210_FIRMWARE_PATH)/gm20b/pmu_bl.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gm20b/pmu_bl.bin \
    $(T210_FIRMWARE_PATH)/gm20b/pmu_sig.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gm20b/pmu_sig.bin

PRODUCT_PACKAGES += \
    acr_ucode_symlink

# General firmware
PRODUCT_COPY_FILES += \
    $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvdec020.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra21x/nvhost_nvdec020.fw \
    $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvdec020_ns.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra21x/nvhost_nvdec020_ns.fw \
    $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvdec020_prod.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra21x/nvhost_nvdec020_prod.fw \
    $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvdec_bl020.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra21x/nvhost_nvdec_bl020.fw \
    $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvdec_bl020_prod.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra21x/nvhost_nvdec_bl020_prod.fw \
    $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvdec_bl_no_wpr020.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra21x/nvhost_nvdec_bl_no_wpr020.fw \
    $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvenc050.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra21x/nvhost_nvenc050.fw \
    $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvjpg010.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra21x/nvhost_nvjpg010.fw \
    $(T210_FIRMWARE_PATH)/tegra21x/nvhost_tsec.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra21x/nvhost_tsec.fw \
    $(T210_FIRMWARE_PATH)/tegra21x/vic04_ucode.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra21x/vic04_ucode.bin

# Xusb firmware
PRODUCT_COPY_FILES += \
    $(T210_FIRMWARE_PATH)/xusb/tegra210b01_xusb_firmware:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra210b01/xusb.bin \
    $(T210_FIRMWARE_PATH)/xusb/tegra21x_xusb_firmware:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra210/xusb.bin

PRODUCT_PACKAGES += \
    tegra210b01_xusb_firmware_symlink \
    tegra21x_xusb_firmware_symlink


# Recovery / Boot Ramdisk
ifneq ($(filter $(TARGET_TEGRA_KERNEL), 3.10 4.9),)
PRODUCT_COPY_FILES += \
    $(T210_FIRMWARE_PATH)/xusb/tegra21x_xusb_firmware:recovery/root/lib/firmware/tegra21x_xusb_firmware \
    $(T210_FIRMWARE_PATH)/xusb/tegra210b01_xusb_firmware:recovery/root/lib/firmware/tegra210b01_xusb_firmware
else
PRODUCT_COPY_FILES += \
    $(T210_FIRMWARE_PATH)/xusb/tegra21x_xusb_firmware:recovery/root/lib/firmware/nvidia/tegra210/xusb.bin \
    $(T210_FIRMWARE_PATH)/xusb/tegra210b01_xusb_firmware:recovery/root/lib/firmware/nvidia/tegra210b01/xusb.bin \
    $(T210_FIRMWARE_PATH)/xusb/tegra21x_xusb_firmware:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/nvidia/tegra210/xusb.bin \
    $(T210_FIRMWARE_PATH)/xusb/tegra210b01_xusb_firmware:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/nvidia/tegra210b01/xusb.bin
endif
