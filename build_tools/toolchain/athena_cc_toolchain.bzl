load("@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl", "feature", "flag_group", "flag_set", "tool_path", "with_feature_set")
load("@bazel_tools//tools/build_defs/cc:action_names.bzl", "ACTION_NAMES")

def _impl(ctx):
    tool_paths = [
        tool_path(
            name = "gcc",
            path = "frc2021/roborio/bin/arm-frc2021-linux-gnueabi-gcc",
        ),
        tool_path(
            name = "ld",
            path = "frc2021/roborio/bin/arm-frc2021-linux-gnueabi-ld",
        ),
        tool_path(
            name = "ar",
            path = "frc2021/roborio/bin/arm-frc2021-linux-gnueabi-ar",
        ),
        tool_path(
            name = "cpp",
            path = "frc2021/roborio/bin/arm-frc2021-linux-gnueabi-cpp",
        ),
        tool_path(
            name = "gcov",
            path = "frc2021/roborio/bin/arm-frc2021-linux-gnueabi-gcov",
        ),
        tool_path(
            name = "nm",
            path = "frc2021/roborio/bin/arm-frc2021-linux-gnueabi-nm",
        ),
        tool_path(
            name = "objdump",
            path = "frc2021/roborio/bin/arm-frc2021-linux-gnueabi-objdump",
        ),
        tool_path(
            name = "strip",
            path = "frc2021/roborio/bin/arm-frc2021-linux-gnueabi-strip",
        ),
    ]
    features = [
        feature(name = "dbg"),  # For some reason we have to redefine dbg and opt modes here?? not really sure why
        feature(name = "opt"),
        feature(
            name = "athena_default_compiler_flags",
            enabled = True,
            flag_sets = [
                flag_set(
                    actions = [ACTION_NAMES.c_compile, ACTION_NAMES.cpp_compile, ACTION_NAMES.assemble, ACTION_NAMES.preprocess_assemble, ACTION_NAMES.linkstamp_compile, ACTION_NAMES.cpp_header_parsing],
                    flag_groups = [
                        flag_group(
                            flags = ["-O0", "-ggdb", "-gdwarf-2", "-g3"],
                        ),
                    ],
                    with_features = [with_feature_set(features = ["dbg"])],
                ),
                flag_set(
                    actions = [ACTION_NAMES.c_compile, ACTION_NAMES.cpp_compile],
                    flag_groups = [
                        flag_group(
                            flags = ["-Os"],
                        ),
                    ],
                    with_features = [with_feature_set(features = ["opt"])],
                ),
                flag_set(
                    actions = [ACTION_NAMES.c_compile, ACTION_NAMES.cpp_compile],
                    flag_groups = [
                        flag_group(
                            flags = ["-no-canonical-prefixes", "-fno-canonical-system-headers"],
                        ),
                    ],
                ),
            ],
        ),
    ]

    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        # These appear to not be needed with sysroot but we may need them in the future?
        #cxx_builtin_include_directories = [
        #    "external/athena_toolchain_linux64/frc2021/roborio/arm-frc2021-linux-gnueabi/usr/include", 
        #    "external/athena_toolchain_linux64/frc2021/roborio/arm-frc2021-linux-gnueabi/usr/lib/gcc/arm-frc2021-linux-gnueabi/7.3.0/include"
        #],
        builtin_sysroot = "external/athena_toolchain_linux64/frc2021/roborio/arm-frc2021-linux-gnueabi",
        toolchain_identifier = "athena_cc_toolchain_linux64",
        host_system_name = "nothing",
        target_system_name = "nothing",
        target_cpu = "nothing",
        target_libc = "nothing",
        cc_target_os = "nothing",
        compiler = "nothing",
        abi_version = "nothing",
        abi_libc_version = "nothing",
        tool_paths = tool_paths,
        features = features,
    )

athena_cc_toolchain_linux64_config = rule(
    implementation = _impl,
    provides = [CcToolchainConfigInfo],
)
