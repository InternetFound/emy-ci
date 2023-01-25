# Normal build steps
. build/envsetup.sh
lunch arrow_lavender-userdebug

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
#export SUPERIOR_GAPPS=minimal

compile_plox () {
m bacon -j17
}
