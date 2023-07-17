#
# Copyright (C) 2023 The LineageOS Project
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
#

DEVICE_PATH := device/samsung/m51

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# AAPT
PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/mixer_paths_idp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_idp.xml \

# Display
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Fingerprint Gestures
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/keylayout/uinput-sec-fp.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-sec-fp.kl

# Inherit Common Device Tree
$(call inherit-product, device/samsung/sm6150-common/sm6150.mk)

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \

# Ramdisk
PRODUCT_PACKAGES += \
    init.m51.rc \

# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/ak991x_dri_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/ak991x_dri_0.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/default_sensors.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/default_sensors.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/icm4x6xx_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/icm4x6xx_0.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sdmmagpie_ak991x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sdmmagpie_ak991x_0.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sdmmagpie_ak991x_2.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sdmmagpie_ak991x_2.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sdmmagpie_ak991x_mst_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sdmmagpie_ak991x_mst_0.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sdmmagpie_ak991x_mst_2.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sdmmagpie_ak991x_mst_2.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sdmmagpie_icm4x6xx_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sdmmagpie_icm4x6xx_0.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sdmmagpie_icm4x6xx_4.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sdmmagpie_icm4x6xx_4.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sdmmagpie_power_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sdmmagpie_power_0.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sdmmagpie_stk3a6x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sdmmagpie_stk3a6x_0.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sdmmagpie_stk3x3x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sdmmagpie_stk3x3x_0.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sdmmagpie_tcs3407_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sdmmagpie_tcs3407_0.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sdmmagpie_vcnl36811_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sdmmagpie_vcnl36811_0.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_amd.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_amd.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_amd_sw_disabled.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_amd_sw_disabled.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_amd_sw_enabled.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_amd_sw_enabled.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_aont.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_aont.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_ccd.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_ccd.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_cm.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_cm.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_dae.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_dae.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_diag_filter.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_diag_filter.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_geomag_rv.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_geomag_rv.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_gyro_cal.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_gyro_cal.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_hw_revision.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_hw_revision.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_mag_cal.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_mag_cal.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_rmd.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_rmd.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_rotv.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_rotv.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_smd.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_smd.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_tilt.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_tilt.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_tilt_sw_disabled.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_tilt_sw_disabled.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/sns_tilt_sw_enabled.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_tilt_sw_enabled.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/stk3a6x_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/stk3a6x_0.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/config/vcnl36811_0.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/cnl36811_0.json \

# Seccomp Policy
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/atfwd@2.0.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/atfwd@2.0.policy \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/codec2.vendor.base.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.base.policy \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/codec2.vendor.ext.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.ext.policy \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/configstore@1.1.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/configstore@1.1.policy \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/mediaextractor_sec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor_sec.policy \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/vendor.qti.hardware.dsp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/vendor.qti.hardware.dsp.policy \

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/m51/m51-vendor.mk)

