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
        "@platforms//cpu:armv7",  # Z-7020 is armv7-a (Cortex-A9) but this is as close as we can get
        ":roborio"
    ]
)