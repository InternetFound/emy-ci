# Normal build steps
. build/envsetup.sh
lunch aospa_lavender-userdebug

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true

compile_plox () {
ls /tmp/rom/out/target/product/lavender/boot.img || make bootimage -j12
#ls /tmp/rom/out/target/product/lavender/vendor.img || make vendorimage -j12
./rom-build.sh lavender -t userdebug -s keys -j16
ls /tmp/rom/aospa*.zip && mv -f /tmp/rom/aospa*.zip /tmp/rom/out/target/product/lavender
}
