# Cmake templates
Cmake templates to get quickly started.

## Standard
Builds a library and an executable.
[googletest](https://github.com/google/googletest) and [googlebench](https://github.com/google/benchmark/) can be enabled (uses find_package; FetchContent if not found).
Doxyfile for the sake of generating documentation of the library is included.

- `app/` - `main()` and other files for the executable (`project_name_app` application)
- `deps/` - external libraries
- `dev/src/*` - library implementation (`project_name` library)
- `dev/doc/*` - documentation
- `include/project_name/*` - library header files (`project_name` library)
- `test/src` - tests
- `bench/src` - benchmarks

`project_name` is built as a library. Executables built in `app`, `test` and `bench` link with this library. Refer to the `standard/README.md` for more info.

Alias (`.bashrc`):
```sh
alias cpp_template='cp -r /path/to/cpp_cmake_templates/standard/* .'
```

## Specific
Other templates based on `standard`.

- `opencl` - OpenCL template. Uses FetchContent to download dependencies:
	- [OpenCL-CLHPP](https://github.com/KhronosGroup/OpenCL-CLHPP)
	- [OpenCL-ICD-Loader](https://github.com/KhronosGroup/OpenCL-ICD-Loader)
	- [OpenCL-Headers](https://github.com/KhronosGroup/OpenCL-Headers)
