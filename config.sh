##########################################################################################
#
# Magisk Module Template Config Script
# by topjohnwu
#
##########################################################################################
##########################################################################################
#
# Instructions:
#
# 1. Place your files into system folder (delete the placeholder file)
# 2. Fill in your module's info into module.prop
# 3. Configure the settings in this file (common/config.sh)
# 4. For advanced features, add shell commands into the script files under common:
#    post-fs-data.sh, service.sh
# 5. For changing props, add your additional/modified props into common/system.prop
#
##########################################################################################

##########################################################################################
# Configs
##########################################################################################

# Set to true if you need to enable Magic Mount
# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=false

##########################################################################################
# Installation Message
##########################################################################################

# Set what you want to show when installing your mod

print_modname() {
  ui_print "*******************************"
  ui_print "      Mi5s camera lib hacks    "
  ui_print "*******************************"
}

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# By default Magisk will merge your files with the original system
# Directories listed here however, will be directly mounted to the correspond directory in the system

# You don't need to remove the example below, these values will be overwritten by your own list
# This is an example
REPLACE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here, it will overwrite the example
# !DO NOT! remove this if you don't need to replace anything, leave it empty as it is now
REPLACE="
"

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  # Only some special files require specific permissions
  # The default permissions should be good enough for most cases

  # Here are some examples for the set_perm functions:

  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm_recursive  $MODPATH/system/lib       0       0       0755            0644

  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm  $MODPATH/system/bin/app_process32   0       2000    0755         u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0       2000    0755         u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0       0       0644
  set_perm $MODPATH/system/vendor/lib/libchromatix_imx378_liteon_hfr_60_3a.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libchromatix_imx378_liteon_hfr_120_3a.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libchromatix_imx378_liteon_hfr_240_3a.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libchromatix_imx378_liteon_video_16M_3a.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libchromatix_imx378_liteon_zsl_preview.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libchromatix_imx378_liteon_zsl_video.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libmmcamera2_mct.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libmmcamera_imx378_liteon.so 0 0 0644
  set_perm $MODPATH/system/etc/media_profiles.xml 0 0 0644
  set_perm $MODPATH/system/etc/media_codecs.xml 0 0 0644  
  set_perm $MODPATH/system/etc/media_codecs_google_video.xml 0 0 0644  
  set_perm $MODPATH/system/vendor/lib/libmmcamera_imx378_semco.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libchromatix_imx378_semco_hfr_60_3a.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libchromatix_imx378_semco_hfr_120_3a.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libchromatix_imx378_semco_hfr_240_3a.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libchromatix_imx378_semco_video_16M_3a.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libchromatix_imx378_semco_zsl_preview.so 0 0 0644
  set_perm $MODPATH/system/vendor/lib/libchromatix_imx378_semco_zsl_video.so 0 0 0644
  set_perm $MODPATH/system/lib/hw/camera.msm8996.so 0 0 0644
  set_perm $MODPATH/system/etc/thermal-engine-8996.conf 0 0 0644
  set_perm $MODPATH/system/vendor/etc/media_profiles_V1_0.xml 0 0 0644
  set_perm $MODPATH/system/vendor/etc/thermal-engine-8996.conf 0 0 0644
  set_perm $MODPATH/system/vendor/etc/media_codecs.xml 0 0 0644
  set_perm $MODPATH/system/vendor/etc/mixer_paths_tasha.xml 0 0 0644
  set_perm $MODPATH/system/vendor/etc/mixer_paths.xml 0 0 0644

  # The following is default permissions, DO NOT remove
  set_perm_recursive  $MODPATH  0  0  0755  0644
}
