# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2017-2018 AOSiP
# Copyright (C) 2019 AOSDP
# Copyright (C) 2020-2021 Fluid
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# OTA update package

UNIT55_TARGET_PACKAGE := $(PRODUCT_OUT)/$(UNIT55_VERSION).zip

.PHONY: unit55
unit55: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(UNIT55_TARGET_PACKAGE)
	@echo "Package Complete: $(UNIT55_TARGET_PACKAGE)" >&2
