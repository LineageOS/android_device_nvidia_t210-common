# Copyright (C) 2020 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)
T210_FIRMWARE_PATH := ../../../../../vendor/nvidia/t210/firmware

include $(CLEAR_VARS)
LOCAL_MODULE               := nvaacdec
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvaacdec.elf
LOCAL_MODULE_SUFFIX        := .elf
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvadma
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvadma.elf
LOCAL_MODULE_SUFFIX        := .elf
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvadma_tx
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvadma_tx.elf
LOCAL_MODULE_SUFFIX        := .elf
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvapm
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvapm.elf
LOCAL_MODULE_SUFFIX        := .elf
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvmp3dec
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvmp3dec.elf
LOCAL_MODULE_SUFFIX        := .elf
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvoice
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvoice.elf
LOCAL_MODULE_SUFFIX        := .elf
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvspkprot
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvspkprot.elf
LOCAL_MODULE_SUFFIX        := .elf
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvsrc
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvsrc.elf
LOCAL_MODULE_SUFFIX        := .elf
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := xusb_b01.bin
LOCAL_MODULE_STEM          := xusb.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/xusb/tegra210b01_xusb_firmware
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra210b01
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_POST_INSTALL_CMD     := \
    ln -sf ./nvidia/tegra210b01/xusb.bin $(TARGET_OUT_VENDOR)/firmware/tegra210b01_xusb_firmware
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := xusb.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/xusb/tegra21x_xusb_firmware
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra210
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_POST_INSTALL_CMD     := \
    ln -sf ./nvidia/tegra210/xusb.bin $(TARGET_OUT_VENDOR)/firmware/tegra21x_xusb_firmware
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := fecs
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/gm20b/fecs.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/gm20b
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := fecs_sig
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/gm20b/fecs_sig.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/gm20b
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := gpccs
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/gm20b/gpccs.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/gm20b
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := gpmu_ucode
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/gm20b/gpmu_ucode.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/gm20b
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := gpmu_ucode_desc
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/gm20b/gpmu_ucode_desc.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/gm20b
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := gpmu_ucode_image
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/gm20b/gpmu_ucode_image.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/gm20b
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := gpu2cde
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/gm20b/gpu2cde.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/gm20b
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := NETB_img
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/gm20b/NETB_img.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/gm20b
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nv_acr_ucode_dbg
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/gm20b/nv_acr_ucode_dbg.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/gm20b
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nv_acr_ucode_prod
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/gm20b/nv_acr_ucode_prod.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/gm20b
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_POST_INSTALL_CMD     := \
    ln -sf ./nv_acr_ucode_prod.bin $(TARGET_OUT_VENDOR)/firmware/gm20b/acr_ucode.bin
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := pmu_bl
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/gm20b/pmu_bl.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/gm20b
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := pmu_sig
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/gm20b/pmu_sig.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/gm20b
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvhost_nvdec020
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvdec020.fw
LOCAL_MODULE_SUFFIX        := .fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/tegra21x
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvhost_nvdec020_ns
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvdec020_ns.fw
LOCAL_MODULE_SUFFIX        := .fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/tegra21x
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvhost_nvdec020_prod
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvdec020_prod.fw
LOCAL_MODULE_SUFFIX        := .fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/tegra21x
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvhost_nvdec_bl020
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvdec_bl020.fw
LOCAL_MODULE_SUFFIX        := .fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/tegra21x
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvhost_nvdec_bl020_prod
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvdec_bl020_prod.fw
LOCAL_MODULE_SUFFIX        := .fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/tegra21x
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvhost_nvdec_bl_no_wpr020
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvdec_bl_no_wpr020.fw
LOCAL_MODULE_SUFFIX        := .fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/tegra21x
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvhost_nvenc050
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvenc050.fw
LOCAL_MODULE_SUFFIX        := .fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/tegra21x
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvhost_nvjpg010
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/tegra21x/nvhost_nvjpg010.fw
LOCAL_MODULE_SUFFIX        := .fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/tegra21x
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvhost_tsec
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/tegra21x/nvhost_tsec.fw
LOCAL_MODULE_SUFFIX        := .fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/tegra21x
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := vic04_ucode
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/tegra21x/vic04_ucode.bin
LOCAL_MODULE_SUFFIX        := .bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/tegra21x
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)
