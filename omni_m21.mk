# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_m21
PRODUCT_DEVICE := m21
PRODUCT_MODEL := SM-M215F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
