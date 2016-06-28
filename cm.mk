$(call inherit-product, device/google/shamrock/full_shamrock.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_shamrock
BOARD_VENDOR := google
TARGET_VENDOR := google
PRODUCT_DEVICE := shamrock

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="cm_shamrock" \
    PRODUCT_NAME="shamrock" \
    BUILD_FINGERPRINT="6.0.1/M3D32/2827466:user/release-keys" 
