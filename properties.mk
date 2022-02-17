# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.resampler.quality=7 \
    audio.deep_buffer.media=1 \
    af.fast_downmix=1

PRODUCT_SYSTEM_PROPERTY_OVERRIDES += \
    ro.af.client_heap_size_kbyte=10240

# Input
PRODUCT_PROPERTY_OVERRIDES += \
    ro.input.noresample=1

# PBC
ifeq ($(TARGET_TEGRA_PBC),pbc2)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.pbc.inf.socthress=20 \
    persist.vendor.sys.pbc.psys.cap=29999 \
    vendor.pbc.cfboost.floor=800000 \
    vendor.pbc.gfboost.floor=300000 \
    vendor.pbc.log.on=0 \
    vendor.pbc.hist.size=5 \
    vendor.pbc.hyst=5 \
    vendor.pbc.over.cfboost=true \
    vendor.pbc.pbat.intercept=-7 \
    vendor.pbc.pbat.slope=1.5 \
    vendor.pbc.polling.period=100 \
    vendor.pbc.step.period=700 \
    vendor.pbc.throttle.depth=0
endif
