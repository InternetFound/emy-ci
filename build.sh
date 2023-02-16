# Normal build steps
. build/envsetup.sh
lunch bootleg_lavender-userdebug

# 0 = Vanilla or Gapps
# 1 = Vanilla and Gapps
build_gapps=1

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true

exp_gapps() {
export WITH_GAPPS=true
}

compile_plox () {
mka bacon -j10
}
