# Required packages
PRODUCT_PACKAGES += \
    LatinIME \
    Stk \
    ThemePicker \
    SimpleDeviceConfig \
    QuickAccessWallet

# App overrides
PRODUCT_PACKAGES += \
    StatixSystemUI \
    StatixSettings

# Preopt StatixSystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
    StatixSystemUI
