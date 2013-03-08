# Inherit device configuration
$(call inherit-product, device/semc/zeusc/full_zeusc.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=R800x BUILD_FINGERPRINT="SEMC/R800x_0000-0000/R800x:4.0.3/4.1.H.0.4/-z9-3w:user/release-keys" PRIVATE_BUILD_DESC="R800x-user 4.0.3 4.1.H.0.4 -z9-3w test-keys"

# Boot Animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_zeusc
PRODUCT_DEVICE := zeusc
