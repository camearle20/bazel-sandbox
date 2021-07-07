# bazel-sandbox

This repo contains an example [Bazel](https://bazel.build/) project for testing new build setups.

What follows is an explanation of the current layout and what everything does.  More specific comments are located in each of the files referenced below.

## WORKSPACE file
The presence of an empty `WORKSPACE` file tells Bazel that the root directory is a Bazel repository.  

Additionally, the file contains definitions that are shared for the entire workspace, such as defining Java Maven dependencies, and also `http_archive` rules, which tell Bazel how to download certain zipped archives and extract them to their own "external" repositories.  We use this feature to download the FRC Athena (roboRIO) GCC toolchain for building C/C++ code to run on the roboRIO's armv7 CPU.

Finally, we use the file to register our toolchains with Bazel, so that it can choose the appropriate one when building.

## BUILD files
`BUILD` files contain "rules" that tell Bazel how to do something.

## project1 directory
The `project1` directory contains an example software project.  Bazel doesn't say anything about
how directories should be structured, so for testing purposes it just contains two subfolders, `java` and `native`.  The former contains a simple Java project, which uses the latter as a JNI dependency.  The native project contains a simple C library which targets the JNI and can be built on multiple platforms.