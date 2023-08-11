# Cmake templates
Cmake templates.

## Types
- `standard` - builds a library and an executable. googletest and google benchmark can be enabled (uses find_package; downloads them if not found). Doxyfile for the sake of generating documentation of the library is included.

## Overall structure
- `app/` - `main()` and other files for executable
- `deps/` - external libraries
- `dev/src/*` - implementation
- `dev/doc/*` - documentation
- `include/project_name/*` - header files
- `test/src` - tests
- `bench/src` - benchmarks

`project_name` is built as a library. Executables built in `app`, `test` and `bench` link with this library.
