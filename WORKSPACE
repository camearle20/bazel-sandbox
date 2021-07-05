load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# This tells Bazel how to download the athena (roborio) toolchain for cross compiling
# on 64 bit linux.  Bazel will download this if it is determined that this compiler
# is needed.
http_archive(
    name = "athena_toolchain_linux64",
    build_file = "@//:build_tools/toolchain/athena_toolchain_linux64_repo.BUILD",
    sha256 = "00cc58bf0607d71e725919d28e22714ce1920692c4864bc86353fc8139cbf7b7",
    urls = ["https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Linux-Toolchain-7.3.0.tar.gz"],
)

http_archive(
    name = ""
)

# This tells Bazel to add our toolchains to the list of options
register_toolchains(
    "@athena_toolchain_linux64//:athena-cc-toolchain-linux64",
    "@athena_toolchain_win32//:athena-cc-toolchain-win32"
)
