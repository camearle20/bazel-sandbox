load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# This tells Bazel how to download the athena (roborio) toolchain for cross compiling
# on 64 bit linux.
http_archive(
    name = "athena_toolchain_linux64",
    build_file = "@//:build_tools/toolchain/athena_toolchain_linux64_repo.BUILD",
    sha256 = "00cc58bf0607d71e725919d28e22714ce1920692c4864bc86353fc8139cbf7b7",
    urls = ["https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Linux-Toolchain-7.3.0.tar.gz"],
)

# Same as above for win32 (also supports 64 bit)
http_archive(
    name = "athena_toolchain_win32",
    build_file = "@//:build_tools/toolchain/athena_toolchain_win32_repo.BUILD",
    sha256 = "f3e9ba32b63d3cd26e242feeb14e878fecbda86c19c12b98c3084c629e06acb3",
    urls = ["https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Windows-Toolchain-7.3.0.zip"],
)

# Same as above for macOS (currently only supports x86_64, native support for arm64 (M1) coming soon? for now use Rosetta 2)
http_archive(
    name = "athena_toolchain_macos64",
    build_file = "@//:build_tools/toolchain/athena_toolchain_macos64_repo.BUILD",
    sha256 = "0822ff945ff422b176571cebe7b2dfdc0ef6bf685d3b6f6833db8dc218d992ae",
    urls = ["https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Mac-Toolchain-7.3.0.tar.gz"],
)

# This tells Bazel to add our toolchains to the list of options
register_toolchains(
    "@athena_toolchain_linux64//:athena-cc-toolchain-linux64",
    "@athena_toolchain_win32//:athena-cc-toolchain-win32",
    "@athena_toolchain_macos64//:athena-cc-toolchain-macos64",
)
