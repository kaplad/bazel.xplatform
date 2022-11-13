load("@build_bazel_rules_android//android:rules.bzl", "android_library")

#
#---
#

objc_library(
    name = "cocoa_native_bridge",
    srcs = [":cocoa_bridge/NativeBridge.mm"],
    hdrs = [":cocoa_bridge/NativeBridge.h"],
    visibility = ["//visibility:public"],
    deps = [":library"],
)

#
#---
#

android_library(
    name = "android_native_bridge",
    srcs = [":android_bridge/java/library/NativeBridge.java"],
    visibility = ["//visibility:public"],
    deps = [":android_native"],
)

cc_library(
    name = "android_native",
    srcs = [":android_bridge/jni.cpp"],
    linkopts = ["-ldl"],
    deps = [":library"],
    alwayslink = True,
)

#
#---
#

cc_binary(
    name = "web_native_bridge",
    srcs = [":web_bridge/embind.cpp"],
    linkopts = ["--bind", "-sSINGLE_FILE"],
    visibility = ["//visibility:public"],
    deps = [":library"],
)

#
#---
#

cc_library(
    name = "library",
    srcs = [":library/source.cpp"],
    hdrs = [":library/header.hpp"],
)
