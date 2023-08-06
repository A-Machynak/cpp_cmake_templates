# Cmake templates
Cmake templates to get quickly started.

## Types
- `v1` - Uses a bit complicated structure - contains `src/` subdirectory in the root which contains an executable and several subdirectories, which are supposed to be built as libraries. Usage is discouraged.
- `v2` - A bit more simple and convenient - directories `dev/src/` and `your_project_name/` contain source and header files respectively, which are built as a library. An `app/` directory (if it exists) contains source files which are built as an executable that links with `your_project_name`. Benchmarks, tests and dependency folders can be disabled/deleted if not needed.

Templates use [googletest](https://github.com/google/googletest) and [google benchmark](https://github.com/google/benchmark/) for tests and benchmarks respectively.
