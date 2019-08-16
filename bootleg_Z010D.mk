# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from Z010D device
$(call inherit-product, device/asus/Z010D/device.mk)

# Inherit some common Bootleg stuff.
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/msm8916-common/overlay/lineage

PRODUCT_NAME := bootleg_Z010D
PRODUCT_DEVICE := Z010D
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

# Product packages
TARGET_USE_JELLY := true

