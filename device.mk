#
# Copyright 2014 The Android Open-Source Project
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

LOCAL_PATH := device/google/shamrock

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/google/shamrock/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel

# Delegation for OEM customization
PRODUCT_SYSTEM_PROPERTY_BLACKLIST := \
    ro.product.device \
    ro.product.name \
    ro.product.manufacturer \
    ro.product.model

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/fstab.qcom:recovery/root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/root/init.qcom.bt.sh:recovery/root/init.qcom.bt.sh \
    $(LOCAL_PATH)/rootdir/root/init.qcom.power.rc:recovery/root/init.qcom.power.rc \
    $(LOCAL_PATH)/rootdir/root/init.qcom.rc:recovery/root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/root/init.qcom.usb.rc:recovery/root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/root/init.target.rc:recovery/root/init.target.rc \
    $(LOCAL_PATH)/rootdir/root/ueventd.qcom.rc:recovery/root/ueventd.qcom.rc 

$(call inherit-product-if-exists, vendor/google/shamrock/device-vendor.mk)
