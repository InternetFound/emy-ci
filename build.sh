# Normal build steps
. build/envsetup.sh
lunch cherish_lavender-userdebug

build_gapps=1

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
export CHERISH_VANILLA=true

exp_gapps() {
export CHERISH_VANILLA=false
export TARGET_USES_MINI_GAPPS=true
export TARGET_GAPPS_ARCH=arm64
}

compile_plox () {
mka bacon -j17
}
