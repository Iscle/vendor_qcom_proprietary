ifeq ($(TARGET_FWK_SUPPORTS_FULL_VALUEADDS),true)
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_STATIC_JAVA_LIBRARIES := vendor.display.color-V1.4-java

LOCAL_PACKAGE_NAME := QColor
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_PROGUARD_ENABLED := disabled

LOCAL_CERTIFICATE := platform
LOCAL_USE_AAPT2 := true

include $(BUILD_PACKAGE)
endif#TARGET_FWK_SUPPORTS_FULL_VALUEADDS