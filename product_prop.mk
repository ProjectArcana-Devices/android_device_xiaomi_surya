#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# ADB
ifeq ($(TARGET_BUILD_VARIANT),eng)
# /vendor/default.prop is force-setting ro.adb.secure=1
# Get rid of that by overriding it in /product on eng builds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0
endif

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    vendor.camera.aux.packagelist=com.android.camera,net.sourceforge.opencamera,org.codeaurora.snapcam \
    media.settings.xml=/vendor/etc/media_profiles_vendor.xml

# Blurs
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1 \
    ro.sf.blurs_are_expensive=1
    
# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.enable_suspend=true

# Disable Rescue Party
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.disable_rescue=true \
    persist.device_config.configuration.disable_rescue_party=true

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Dex2oat
PRODUCT_PRODUCT_PROPERTIES += \
     dalvik.vm.dex2oat64.enabled=true

#Gboard Configuration by Vern
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.themed_nav_bar_style=2 \
    ro.com.google.ime.silk_theme=true \
    ro.com.google.ime.pill_shaped_key=true \
    ro.com.google.ime.enable_keyboard_redesign=true \
    ro.com.google.ime.use_keyboard_redesign_theme_by_default=true \
    ro.com.google.ime.kb_pad_port_r=4.0 \
    ro.com.google.ime.kb_pad_port_l=4.0 \
    ro.com.google.ime.kb_pad_port_b=1 \
    ro.com.google.ime.kb_pad_land_r=64.0 \
    ro.com.google.ime.kb_pad_land_l=64.0
    
# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
    debug.hwui.renderer=skiagl \
    debug.cpurend.vsync=false \
    debug.sf.enable_gl_backpressure=1 \
    debug.sf.disable_backpressure=1 \
    debug.sf.latch_unsignaled=1 \
    debug.renderengine.backend=skiaglthreaded \
    ro.gfx.driver.1=com.qualcomm.qti.gpudrivers.sm6150.api30 \
    ro.surface_flinger.has_wide_color_display=false \
    ro.surface_flinger.use_color_management=true \
    ro.surface_flinger.has_HDR_display=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.protected_contents=true \
    ro.surface_flinger.wcg_composition_dataspace=143261696 \
    ro.surface_flinger.running_without_sync_framework=true \
    ro.surface_flinger.use_context_priority=true \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    vendor.display.disable_rotator_downscale=1 \
    vendor.display.disable_offline_rotator=1 \
    vendor.display.defer_fps_frame_count=4 \
    vendor.gralloc.disable_ubwc=0 \
    vendor.display.update_vsync_on_doze=1 \
    vendor.display.video_mode_panel=1 \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno \
    ro.surface_flinger.has_wide_color_display=false

# Power-saving props
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.use_data_netmgrd=true \
    ro.vold.umsdirtyratio=20 \
    ro.ril.disable.power.collapse=0 \
    power.saving.mode=1 \
    pm.sleep_mode=1
    
# Smart fps switching
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.smart_dfps.enable=false

# Telephony
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.default_network=22,22 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.sys.fflag.override.settings_network_and_internet_v2=true \
    persist.vendor.ims.disableADBLogs=1 \
    persist.vendor.ims.disableDebugLogs=1 \
    persist.vendor.ims.disableIMSLogs=1 \
    persist.vendor.ims.disableQXDMLogs=1

# WFD
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.enable_hwc_vds=1 \
    persist.debug.wfd.enable=0 \
    persist.sys.wfd.virtual=0

# Dynamic RR
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.set_display_power_timer_ms=1000 \
    ro.surface_flinger.set_idle_timer_ms=500 \
    ro.surface_flinger.set_touch_timer_ms=700 \
    ro.surface_flinger.support_kernel_idle_timer=true \
    vendor.display.idle_time=0 \
    vendor.display.idle_time_inactive=0 \
    vendor.display.disable_metadata_dynamic_fps=1 \
    ro.surface_flinger.use_content_detection_for_refresh_rate=true

