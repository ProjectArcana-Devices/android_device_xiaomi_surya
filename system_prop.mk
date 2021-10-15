# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.dex2oat-cpu-set=0,1,2,3,4,5 \
    dalvik.vm.dex2oat-threads=6 \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.image-dex2oat-cpu-set=0,1,2,3,4,5 \
    dalvik.vm.image-dex2oat-threads=6 \
    dalvik.vm.image-dex2oat-filter=speed \
    dalvik.vm.boot-dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.boot-dex2oat-threads=8 \
    ro.vendor.qti.am.reschedule_service=true
    ro.sys.fw.dex2oat_thread_count=8
    pm.dexopt.boot=verify \
    pm.dexopt.first-boot=verify \
    pm.dexopt.ab-ota=speed-profile \
    pm.dexopt.install=speed-profile

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bt.a2dp.aac_whitelist=false \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aptxadaptive-aac-ldac \
    persist.vendor.btstack.enable.splita2dp=true \
    persist.vendor.btstack.enable.twsplus=true \
    persist.vendor.btstack.enable.twsplussho=true \
    ro.bluetooth.library_name=libbluetooth_qti.so \
    ro.config.vc_call_vol_steps=6 \
    persist.vendor.audio_hal.dsp_bit_width_enforce_mode=24 \
    vendor.bluetooth.soc=cherokee

# Dirac
PRODUCT_PROPERTY_OVERRIDES += \
    ro.audio.soundfx.dirac=true \
    hpx_send_params=1 \
    persist.dirac.acs.controller=qem \
    persist.dirac.acs.storeSettings=1 \
    persist.dirac.acs.no_usermsg=true \
    vendor.audio.safx.pbe.enabled=false \
    audio.dirac.logging=0 \
    persist.dirac.acs.ignore_error=1
    
# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=420

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.mm.enable.qcom_parser=131071983

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true \
    ro.sys.fw.bservice_limit=5 \
    ro.sys.fw.bservice_age=5000 \
    ro.am.reschedule_service=true \
    ro.sys.fw.bg_apps_limit=32 \
    ro.config.fha_enable=true \
    ro.config.dha_cached_max=16 \
    ro.config.dha_empty_max=42 \
    ro.config.dha_empty_init=32 \
    ro.config.dha_lmk_scale=0.545 \
    ro.config.dha_th_rate=2.3 \
    ro.config.sdha_apps_bg_max=64 \
    ro.config.sdha_apps_bg_min=8
    
# Netflix
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q6150-17263-1
    
# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.perf.scroll_opt=true
    
# ZRAM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.first_wb_delay_mins=1440 \
    ro.zram.periodic_wb_delay_hours=24

# Zygote
PRODUCT_PROPERTY_OVERRIDES += \
     persist.device_config.runtime_native.usap_pool_enabled=true

# Display - Phase offsets
PRODUCT_PROPERTY_OVERRIDES += \
     debug.sf.early_app_phase_offset_ns=500000 \
     debug.sf.early_gl_app_phase_offset_ns=15000000 \
     debug.sf.early_gl_phase_offset_ns=3000000 \
     debug.sf.early_phase_offset_ns=500000 \
     debug.sf.high_fps_early_gl_phase_offset_ns=6500000 \
     debug.sf.high_fps_early_phase_offset_ns=6100000 \
     debug.sf.high_fps_late_app_phase_offset_ns=1000000
