# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
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
# Lineage OTA update package

LINEAGE_TARGET_PACKAGE := $(PRODUCT_OUT)/$(LINEAGE_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: bacon
bacon: $(DEFAULT_GOAL) $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(LINEAGE_TARGET_PACKAGE)
	$(hide) mv -f $(INTERNAL_OTA_PACKAGE_TARGET) $(LINEAGE_TARGET_PACKAGE)
	$(hide) $(SHA256) $(LINEAGE_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(LINEAGE_TARGET_PACKAGE).sha256sum
	$(hide) rm -rf $(call intermediates-dir-for,PACKAGING,target_files)
	@echo ""
	@echo "                                                                " >&2
	@echo "                                                                " >&2
	@echo "                  CraftRom OS                 " >&2
	@echo "                                                                " >&2
	@echo "                                                                " >&2
	@echo "------------------------------------------------" >&2
	@echo " [Timestamp]            : "$(CUSTOM_BUILD_DATE_UTC)
	@echo " [Size]                 : $(shell du -hs $(LINEAGE_TARGET_PACKAGE) | awk '{print $$1}')"
	@echo " [Size(in bytes)]       : $(shell wc -c $(LINEAGE_TARGET_PACKAGE) | awk '{print $$1}')"
	@echo " [Package]              : "$(LINEAGE_TARGET_PACKAGE)"               "
	@echo " [SHA256]               : `sha256sum $(LINEAGE_TARGET_PACKAGE) | cut -d ' ' -f 1` "
	@echo "------------------------------------------------" >&2
	@echo ""