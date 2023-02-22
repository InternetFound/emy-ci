# Normal build steps
. build/envsetup.sh
lunch conquer_lavender-userdebug

build_gapps=1

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
export TARGET_USES_OLD_DISPLAY_HAL=true

exp_gapps() {
export TARGET_USE_GAPPS=true
}

compile_plox () {
make carthage -j10
}
