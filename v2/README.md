# Cmake templates
Cmake templates.

## Types
- `standard` - builds a library and an executable. googletest and google benchmark can be enabled (uses find_package; downloads them if not found).

## Overall structure
- `app/` - `main()` and other files for executable
- `deps/` - external libraries
- `src/dev/*` - implementation
- `my_project/*` - header files
- `test/src` - folder with tests
- `bench/src` - folder with benchmarks

`my_project` is built as a library. Executables built in `app`, `test` and `bench` link with this library.
