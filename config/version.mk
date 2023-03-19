#
#   Copyright (C) 2022
#   SPDX-License-Identifier: Apache-2.0
#

UNIT55_BASE_VERSION := 2.0

UNIT55_BUILD_DATE := $(shell date +%Y%m%d)
UNIT55_BUILD_TIME := $(shell date +%H%M)

UNIT55_BUILD_VERSION := $(UNIT55_BASE_VERSION)
UNIT55_VERSION := Unit55-$(UNIT55_BASE_VERSION)-$(UNIT55_BUILD_DATE)-$(UNIT55_BUILD_TIME)
UNIT55_DISPLAY_VERSION := $(UNIT55_BUILD_VERSION)

TARGET_PRODUCT_SHORT := $(subst unit55_,,$(UNIT55_BASE_VERSION))

PRODUCT_PRODUCT_PROPERTIES += \
    com.unit55.version=$(UNIT55_VERSION) \
    com.unit55.base.version=$(UNIT55_BASE_VERSION) \
    com.unit55.display.version=$(UNIT55_DISPLAY_VERSION) \
    com.unit55.build.version=$(UNIT55_BUILD_VERSION) \
    com.unit55.build_date=$(UNIT55_BUILD_DATE) \
    com.unit55.build_time=$(UNIT55_BUILD_TIME)
