$(call inherit-product, device/google/shamrock/full_shamrock.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_shamrock
BOARD_VENDOR := google
TARGET_VENDOR := google
PRODUCT_DEVICE := shamrock

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="shamrock" \
    PRODUCT_NAME="shamrock" \
    BUILD_FINGERPRINT="htc/hiaeuhl_00401/htc_hiaeuhl:6.0/MRA58K/635503.7:user/release-keys" \
    PRIVATE_BUILD_DESC="1.10.401.7 CL635503 release-keys"
