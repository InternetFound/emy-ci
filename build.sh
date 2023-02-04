# Normal build steps
. build/envsetup.sh
lunch aospa_lavender-user

# export variable here
export TZ=Asia/Kolkata

compile_plox () {
ls /tmp/rom/out/target/product/lavender/boot.img || make bootimage -j12
./rom-build.sh lavender -t user -s keys -j16
ls /tmp/rom/aospa*.zip && mv -f /tmp/rom/aospa*.zip /tmp/rom/out/target/product/lavender
}
