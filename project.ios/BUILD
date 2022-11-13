load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_apple//apple:versioning.bzl", "apple_bundle_version")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

#
#---
#

ios_application(
    name = "bundle",
    app_icons = [":Assets.xcassets/AppIcon.appiconset/Contents.json"],
    bundle_id = "bazel.xplatform.awesome",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [":Info.plist"],
    launch_storyboard = ":Base.lproj/LaunchScreen.storyboard",
    minimum_os_version = "13.0",
    version = ":version",
    deps = [":sources"],
)

apple_bundle_version(
    name = "version",
    build_version = "1.0",
    short_version_string = "1.0",
)

swift_library(
    name = "sources",
    srcs = [
        ":AppDelegate.swift",
        ":SceneDelegate.swift",
        ":ViewController.swift",
    ],
    copts = [
        "-import-objc-header",
        "common/cocoa_bridge/Native-Bridging-Header.h",
    ],
    data = [
        ":Base.lproj/Main.storyboard",
    ],
    module_name = "sources",
    deps = ["//common:cocoa_native_bridge"],
)
