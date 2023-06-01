# Copyright (C) 2023 The Android Open Source Project
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

ifeq ($(TARGET_TEGRA_FIRMWARE_BRANCH),linux-firmware)
LOCAL_PATH := $(call my-dir)
T210_FIRMWARE_PATH := ../../../../../../kernel/nvidia/linux-firmware

DOWNSTREAM_BRANCH    := rel-shield-r
T210_DOWNSTREAM_PATH := ../../../../../../vendor/nvidia/t210/$(DOWNSTREAM_BRANCH)/firmware

include $(CLEAR_VARS)
LOCAL_MODULE               := bl.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/acr/bl.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/acr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := ucode_load.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/acr/ucode_load.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/acr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := fecs_bl.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/fecs_bl.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := fecs_data.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/fecs_data.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := fecs_inst.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/fecs_inst.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := fecs_sig.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/fecs_sig.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := gpccs_data.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/gpccs_data.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := gpccs_inst.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/gpccs_inst.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := sw_bundle_init.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/sw_bundle_init.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := sw_method_init.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm200/gr/sw_method_init.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := sw_ctx.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/sw_ctx.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := sw_nonctx.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/gr/sw_nonctx.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/gr
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := desc.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/pmu/desc.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/pmu
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := image.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/pmu/image.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/pmu
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := sig.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/gm20b/pmu/sig.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/gm20b/pmu
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvdec.bin
LOCAL_SRC_FILES            := $(T210_DOWNSTREAM_PATH)/tegra21x/nvhost_nvdec020_ns.fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra210
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvenc.bin
LOCAL_SRC_FILES            := $(T210_DOWNSTREAM_PATH)/tegra21x/nvhost_nvenc050.fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra210
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvjpg.bin
LOCAL_SRC_FILES            := $(T210_DOWNSTREAM_PATH)/tegra21x/nvhost_nvjpg010.fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra210
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := vic04_ucode.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/tegra210/vic04_ucode.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra210
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := xusb.bin
LOCAL_SRC_FILES            := $(T210_FIRMWARE_PATH)/nvidia/tegra210/xusb.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra210
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := xusb_b01.bin
LOCAL_MODULE_STEM          := xusb.bin
LOCAL_SRC_FILES            := $(T210_DOWNSTREAM_PATH)/xusb/tegra210b01_xusb_firmware
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra210b01
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)
endif
