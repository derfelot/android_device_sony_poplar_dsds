### PLATFORM
$(call inherit-product, device/sony/yoshino-common/platform.mk)
### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/sony/poplar_dsds/poplar_dsds-vendor.mk)

### DALVIK
$(call inherit-product, vendor/omni/config/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, vendor/omni/config/phone-xxhdpi-2048-hwui-memory.mk)

DEVICE_PATH := device/sony/poplar_dsds

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(DEVICE_PATH)/overlay/packages/apps/CarrierConfig

include $(DEVICE_PATH)/device/*.mk
include $(DEVICE_PATH)/vendor_prop.mk
