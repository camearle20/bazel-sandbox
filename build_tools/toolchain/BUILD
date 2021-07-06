toolchain(
    name = "athena-cc-toolchain-linux64",
    exec_compatible_with = ["@platforms//os:linux", "@platforms//cpu:x86_64"],
    target_compatible_with = ["//build_tools/platforms:roborio"],
    toolchain = "@athena_toolchain_linux64_files//:athena-cc-toolchain-linux64-def",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)

toolchain(
    name = "athena-cc-toolchain-win32",
    exec_compatible_with = ["@platforms//os:windows"],
    target_compatible_with = ["//build_tools/platforms:roborio"],
    toolchain = "@athena_toolchain_win32_files//:athena-cc-toolchain-win32-def",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)

toolchain(
    name = "athena-cc-toolchain-macos64",
    exec_compatible_with = ["@platforms//os:macos", "@platforms//cpu:x86_64"],
    target_compatible_with = ["//build_tools/platforms:roborio"],
    toolchain = "@athena_toolchain_macos64_files//:athena-cc-toolchain-macos64-def",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)