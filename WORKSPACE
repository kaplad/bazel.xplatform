load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

#
#---
#

git_repository(
    name = "build_bazel_apple_support",
    remote = "https://github.com/bazelbuild/apple_support.git",
    tag = "1.17.1"
)

load("@build_bazel_apple_support//lib:repositories.bzl", "apple_support_dependencies")
apple_support_dependencies()

load("@bazel_features//:deps.bzl", "bazel_features_deps")
bazel_features_deps()

#
#---
#

git_repository(
    name = "build_bazel_rules_apple",
    remote = "https://github.com/bazelbuild/rules_apple.git",
    tag = "3.16.1",
)

git_repository(
    name = "build_bazel_rules_swift",
    remote = "https://github.com/bazelbuild/rules_swift.git",
    tag = "2.3.1",
)

load("@build_bazel_rules_swift//swift:repositories.bzl", "swift_rules_dependencies")
swift_rules_dependencies()

git_repository(
    name = "rules_xcodeproj",
    remote = "https://github.com/MobileNativeFoundation/rules_xcodeproj.git",
    tag = "2.10.0",
)

load("@rules_xcodeproj//xcodeproj:repositories.bzl", "xcodeproj_rules_dependencies")
xcodeproj_rules_dependencies()

#
#---
#

git_repository(
    name = "build_bazel_rules_android",
    remote = "https://github.com/bazelbuild/rules_android.git",
    tag = "v0.1.1",
)

git_repository(
    name = "rules_jvm_external",
    remote = "https://github.com/bazelbuild/rules_jvm_external.git",
    tag = "4.2",
)

android_sdk_repository(
    name = "androidsdk",
    path = "<add_your_path>",
)

android_ndk_repository(
    name = "androidndk",
    api_level = 21,
    path = "<add_your_path>",
)

load("@rules_jvm_external//:defs.bzl", "maven_install")
maven_install(
    artifacts = [
        "androidx.appcompat:appcompat:1.3.0",
        "com.google.android.material:material:1.4.0",
        "androidx.constraintlayout:constraintlayout:2.0.4",
    ],
    repositories = [
        "https://maven.google.com",
    ],
)

#
#---
#

git_repository(
    name = "emsdk",
    remote = "https://github.com/emscripten-core/emsdk.git",
    strip_prefix = "bazel",
    tag = "3.1.25",
)

load("@emsdk//:deps.bzl", "deps")
deps()

load("@emsdk//:emscripten_deps.bzl", "emscripten_deps")
emscripten_deps()
