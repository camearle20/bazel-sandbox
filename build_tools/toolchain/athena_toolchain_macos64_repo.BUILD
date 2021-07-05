load("@//:build_tools/toolchain/athena_cc_toolchain.bzl", "athena_cc_toolchain_macos64_config")

athena_cc_toolchain_macos64_config(
    name = "athena-cc-toolchain-macos64-config",
)

filegroup(
    name = "athena-cc-toolchain-macos64-files",
    srcs = glob(["frc2021/roborio/**/*"]),
)

cc_toolchain(
    name = "athena-cc-toolchain-macos64-def",
    all_files = ":athena-cc-toolchain-macos64-files",
    ar_files = ":athena-cc-toolchain-macos64-files",
    compiler_files = ":athena-cc-toolchain-macos64-files",
    dwp_files = ":athena-cc-toolchain-macos64-files",
    linker_files = ":athena-cc-toolchain-macos64-files",
    objcopy_files = ":athena-cc-toolchain-macos64-files",
    strip_files = ":athena-cc-toolchain-macos64-files",
    toolchain_config = ":athena-cc-toolchain-macos64-config",
)

toolchain(
    name = "athena-cc-toolchain-macos64",
    exec_compatible_with = ["@platforms//os:macos", "@platforms//cpu:x86_64"],
    target_compatible_with = ["@//build_tools/platforms:roborio"],
    toolchain = ":athena-cc-toolchain-macos64-def",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)
