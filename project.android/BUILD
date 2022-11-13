load("@build_bazel_rules_android//android:rules.bzl", "android_binary")

#
#---
#

android_binary(
    name = "bundle",
    srcs = [":java/bazel/xplatform/awesome/MainActivity.java"],
    custom_package = "bazel.xplatform.awesome",
    manifest = ":AndroidManifest.xml",
    manifest_values = {
        "minSdkVersion": "15",
        "targetSdkVersion": "32",
    },
    resource_files = glob(
        ["res/**/*"],
        ["**/.DS_Store"],
    ),
    deps = [
        "//common:android_native_bridge",
        "@maven//:androidx_appcompat_appcompat",
        "@maven//:androidx_constraintlayout_constraintlayout",
        "@maven//:com_google_android_material_material",
    ],
)
