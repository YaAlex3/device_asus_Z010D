#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# call the proprietary setup
$(call inherit-product-if-exists, vendor/asus/Z010D/Z010D-vendor.mk)
$(call inherit-product-if-exists, vendor/asus/Z010DD/Z010DD-vendor.mk)

#$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Include Bootanimation configuration
TARGET_BOOT_ANIMATION_RES :=720

# Inherit from msm8916-common
$(call inherit-product, device/asus/msm8916-common/msm8916.mk)

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fusion.magfield.max=250

BUILD_FINGERPRINT := asus/WW_Phone/ASUS_Z010_2:6.0.1/MMB29P/13.8.26.80-20161230:user/release-keys