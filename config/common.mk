#
#   Copyright (C) 2022
#   SPDX-License-Identifier: Apache-2.0
#

PRODUCT_BRAND ?= Unit55

# Extras
$(call inherit-product, vendor/extras/extras.mk)

# GMS
$(call inherit-product, vendor/gms/products/gms.mk)

# Packages
$(call inherit-product, vendor/unit55/config/packages.mk)

# Telephony
$(call inherit-product, vendor/unit55/telephony/telephony.mk)

# Versiom
$(call inherit-product, vendor/unit55/config/version.mk)

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# Overlay
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/unit55/overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/unit55/overlay

-include $(WORKSPACE)/build_env/image-auto-bits.mk

# Copy over some permissions
PRODUCT_COPY_FILES += \
    vendor/unit55/permissions/privapp-permissions-unit55-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-unit55-product.xml \
    vendor/unit55/permissions/privapp-permissions-unit55-se.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-unit55-se.xml

# AiAi Config
PRODUCT_COPY_FILES += \
    vendor/unit55/permissions/allowlist_com.google.android.as.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/allowlist_com.google.android.as.xml

# Pixel Framework
$(call inherit-product, vendor/pixel-framework/config.mk)
