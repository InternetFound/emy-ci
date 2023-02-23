# Normal build steps
. build/envsetup.sh
lunch awaken_lavender-userdebug

build_gapps=1

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
export BUILD_USERNAME=Prashant
export BUILD_HOSTNAME=Ubuntu

exp_gapps() {
export USE_GAPPS=true
}

compile_plox () {
make bacon -j10
}
