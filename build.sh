# Normal build steps
. build/envsetup.sh
lunch lineage_lavender-userdebug

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
#export WITH_GAPPS=true
#export TARGET_GAPPS_ARCH=arm64
#export BLISS_BUILD_VARIANT=gapps

compile_plox () {
make bacon -j16
}
