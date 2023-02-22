# Normal build steps
. build/envsetup.sh
lunch conquer_lavender-userdebug

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
export TARGET_USES_OLD_DISPLAY_HAL=true

compile_plox () {
make carthage -j10
}
