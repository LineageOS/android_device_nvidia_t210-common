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

LOCAL_PATH := device/nvidia/t210-common/vendor/linux-firmware

include $(LOCAL_PATH)/t210-recovery.mk

# GPU firmware
PRODUCT_PACKAGES += \
    bl.bin \
    ucode_load.bin \
    fecs_bl.bin \
    fecs_data.bin \
    fecs_inst.bin \
    fecs_sig.bin \
    gpccs_data.bin \
    gpccs_inst.bin \
    sw_bundle_init.bin \
    sw_method_init.bin \
    sw_ctx.bin \
    sw_nonctx.bin \
    desc.bin \
    image.bin \
    sig.bin

# General firmware
PRODUCT_PACKAGES += \
    nvdec.bin \
    nvenc.bin \
    nvjpg.bin \
    vic04_ucode.bin \
    xusb.bin \
    xusb_b01.bin
