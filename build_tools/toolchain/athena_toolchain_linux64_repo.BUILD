load("@//:build_tools/toolchain/athena_cc_toolchain.bzl", "athena_cc_toolchain_linux64_config")

athena_cc_toolchain_linux64_config(
    name = "athena-cc-toolchain-linux64-config",
)

filegroup(
    name = "athena-cc-toolchain-linux64-files",
    srcs = glob(["frc2021/roborio/**/*"])
)

cc_toolchain(
    name = "athena-cc-toolchain-linux64-def",
    all_files = ":athena-cc-toolchain-linux64-files",
    ar_files = ":athena-cc-toolchain-linux64-files",
    compiler_files = ":athena-cc-toolchain-linux64-files",
    dwp_files = ":athena-cc-toolchain-linux64-files",
    linker_files = ":athena-cc-toolchain-linux64-files",
    objcopy_files = ":athena-cc-toolchain-linux64-files",
    strip_files = ":athena-cc-toolchain-linux64-files",
    toolchain_config = ":athena-cc-toolchain-linux64-config",
)

toolchain(
    name = "athena-cc-toolchain-linux64",
    target_compatible_with = ["@//build_tools/platforms:roborio"],
    toolchain = ":athena-cc-toolchain-linux64-def",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)
