# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/zeusc/zeusc-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/zeusc/overlay

$(call inherit-product, device/semc/zeus-common/zeus.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_AAPT_CONFIG := normal hdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
    device/semc/zeusc/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/zeusc/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_H.rle:root/logo.rle


# Device specific part for two-stage boot
PRODUCT_COPY_FILES += \
    device/semc/zeusc/recovery/bootrec-device:recovery/bootrec-device

# Device specific configs
PRODUCT_COPY_FILES += \
    device/semc/zeusc/config/cy8ctma300_touch.idc:system/usr/idc/cy8ctma300_touch.idc \
    device/semc/zeusc/config/synaptics_touchpad.idc:system/usr/idc/synaptics_touchpad.idc \
    device/semc/zeusc/config/atdaemon.kl:system/usr/keylayout/atdaemon.kl \
    device/semc/zeusc/config/keypad-game-zeus.kl:system/usr/keylayout/keypad-game-zeus.kl \
    device/semc/zeusc/config/keypad-phone-zeus.kl:system/usr/keylayout/keypad-phone-zeus.kl \
    device/semc/zeusc/config/keypad-zeus.kl:system/usr/keylayout/keypad-zeus.kl \
    device/semc/zeusc/config/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
    device/semc/zeusc/config/keypad-game-zeus.kcm:system/usr/keychars/keypad-game-zeus.kcm \
    device/semc/zeusc/config/keypad-zeus.kcm:system/usr/keychars/keypad-zeus.kcm \
    device/semc/zeusc/config/sensors.conf:system/etc/sensors.conf

$(call inherit-product, device/semc/msm7x30-common/prebuilt/resources-hdpi.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.telephony.ril_class=SemcRILCDMA \
    ro.telephony.default_network=4 \
    ro.ril.vzw.feature=1 \
    ro.ril.wp.feature=1 \
    persist.telephony.support_ipv4=true \
    persist.telephony.support_ipv6=true \
    ro.cdma.data_retry_config=max_retries=infinite,0,0,60000,120000,480000,900000 \
    ro.cdma.home.operator.alpha=Verizon \
    ro.cdma.home.operator.numeric=310012 \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.telephony.ril.v3=datacall
