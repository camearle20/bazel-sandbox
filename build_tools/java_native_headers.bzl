def _impl(ctx):
    native_headers = ctx.attr.lib[JavaInfo].outputs.native_headers
    ctx.actions.run(
        inputs = [native_headers],
        tools = [ctx.executable._zipper],
        outputs = ctx.outputs.outs,
        executable = ctx.executable._zipper.path,
        arguments = ["vxf", native_headers.path, "-d", ctx.outputs.outs[0].dirname],
    )

extract_native_header_jar = rule(
    implementation = _impl,
    attrs = {
        "lib": attr.label(mandatory=True, allow_single_file=True),
        "outs": attr.output_list(),
        "_zipper": attr.label(executable=True, cfg="host", default=Label("@bazel_tools//tools/zip:zipper"), allow_files=True)
    },
    output_to_genfiles = True,
)