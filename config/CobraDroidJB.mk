# Inherit the full for emulator specific
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
#
# Overrides
PRODUCT_NAME := CobraDroidJB
PRODUCT_MODEL := CDJB001
PRODUCT_DEVICE := goldfish
PRODUCT_MANUFACTURER := CobraDenSec
PRODUCT_LOCALES := en_US en_GB
