# This file is copied to the directory where the ahtena linux64 toolchain is downloaded automatically by Bazel.
# It acts as the BUILD file in that directory, and it exists in its own repository.
# Thus, any reference to the root repository of this project must be done fully qualified (i.e. with "@"),
# as leaving off the repo label will reference the local repo which in this case would be the downloaded files.

# Load our toolchain definitions
load("@//:build_tools/toolchain/athena_cc_toolchain.bzl", "athena_cc_toolchain_linux64_config")

athena_cc_toolchain_linux64_config(
    name = "athena-cc-toolchain-linux64-config",
)

filegroup(
    name = "athena-cc-toolchain-linux64-files",
    srcs = glob(["frc2021/roborio/**/*"]),
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
    exec_compatible_with = ["@platforms//os:linux"],
    target_compatible_with = ["@//build_tools/platforms:roborio"],
    toolchain = ":athena-cc-toolchain-linux64-def",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)
