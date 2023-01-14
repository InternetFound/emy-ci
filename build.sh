# Normal build steps
. build/envsetup.sh
lunch bliss_lavender-userdebug

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
export WITH_GAPPS=true
export TARGET_GAPPS_ARCH=arm64
export BLISS_BUILD_VARIANT=gapps

compile_plox () {
blissify -g lavender -j$(nproc --all)
}
