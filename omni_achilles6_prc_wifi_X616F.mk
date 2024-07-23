#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from achilles6_prc_wifi_X616F device
$(call inherit-product, device/lenovo/achilles6_prc_wifi_X616F/device.mk)

PRODUCT_DEVICE := achilles6_prc_wifi_X616F
PRODUCT_NAME := omni_achilles6_prc_wifi_X616F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X616F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_achilles6_prc_wifi_X616F-user 10 QP1A.190711.020 tb8788p164 test-keys"

BUILD_FINGERPRINT := None
