LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE               := init.t210.rc
LOCAL_MODULE_CLASS         := ETC
LOCAL_SRC_FILES            := init.t210.rc
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := init.t210_common.rc
LOCAL_MODULE_CLASS         := ETC
LOCAL_SRC_FILES            := init.t210_common.rc
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := init/hw
include $(BUILD_PREBUILT)
