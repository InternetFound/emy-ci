# Normal build steps
. build/envsetup.sh
lunch lineage_lavender-userdebug

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
#export SUPERIOR_GAPPS=minimal

compile_plox () {
make bacon -j17
}
