package(default_visibility = ["//visibility:public"])

constraint_setting(name = "device")

constraint_value(
    name = "roborio",
    constraint_setting = ":device"
)

platform(
    name = "athena",
    constraint_values = [
        "@platforms//os:linux",
        "@platforms//cpu:arm",
        ":roborio"
    ]
)