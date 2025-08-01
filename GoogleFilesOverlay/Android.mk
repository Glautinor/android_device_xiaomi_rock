LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Module definition for the prebuilt APK
LOCAL_MODULE := GoogleFilesOverlay
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

# This tells the build system the APK is already signed
LOCAL_CERTIFICATE := PRESIGNED

# This ensures the module is placed on the /product partition
LOCAL_PRODUCT_MODULE := true

include $(BUILD_PREBUILT)
