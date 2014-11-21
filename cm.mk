## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/f260s/f260s.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := f260s
PRODUCT_NAME := cm_f260s
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-F260s
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LTE3_LGU_KR BUILD_FINGERPRINT=lge/fx1sk_skt_kr/fx1sk:4.4.2/KOT49I.F260S20f/F260S20f.1401068836:user/release-keys PRIVATE_BUILD_DESC="fx1sk_skt_kr-user 4.4.2 KOT49I.F260S20f F260S20f.1401068836 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
