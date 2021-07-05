load("@//:build_tools/toolchain/athena_cc_toolchain.bzl", "athena_cc_toolchain_win32_config")

athena_cc_toolchain_win32_config(
    name = "athena-cc-toolchain-win32-config",
)

filegroup(
    name = "athena-cc-toolchain-win32-files",
    srcs = glob(["frc2021/roborio/**/*"]),
)

cc_toolchain(
    name = "athena-cc-toolchain-win32-def",
    all_files = ":athena-cc-toolchain-win32-files",
    ar_files = ":athena-cc-toolchain-win32-files",
    compiler_files = ":athena-cc-toolchain-win32-files",
    dwp_files = ":athena-cc-toolchain-win32-files",
    linker_files = ":athena-cc-toolchain-win32-files",
    objcopy_files = ":athena-cc-toolchain-win32-files",
    strip_files = ":athena-cc-toolchain-win32-files",
    toolchain_config = ":athena-cc-toolchain-win32-config",
)

toolchain(
    name = "athena-cc-toolchain-win32",
    exec_compatible_with = ["@platforms//os:windows", "@platforms//cpu:x86_32"],
    target_compatible_with = ["@//build_tools/platforms:roborio"],
    toolchain = ":athena-cc-toolchain-win32-def",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)
