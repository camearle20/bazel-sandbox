load("@rules_java//java:defs.bzl", "java_binary")
load("//build_tools:java_native_headers.bzl", "extract_native_header_jar")

native_headers = [
    ":Test.h"
]

extract_native_header_jar(
    name = "test_native_headers_files",
    lib = ":test-java",
    outs = ["Test.h"]
)

java_library(
    name = "test-java",
    srcs = ["Test.java"],
)

java_library(
    name = "test",
    exports = [":test-java"],
    runtime_deps = ["//project1/native"]
)


java_binary(
    name = "test_run",
    runtime_deps = [":test"],
    main_class = "Test"
)

cc_library(
    name = "test_native_headers",
    hdrs = native_headers,
    includes = ["."],
    visibility = ["//visibility:public"]
)