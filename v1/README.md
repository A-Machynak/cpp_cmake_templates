# Cmake templates
Cmake templates for a few use cases.

## Types
- `minimal` - minimal template (project folder with project libraries)
- `minimal_with_deps` - `minimal` with `deps/` folder (for external libraries)
- `standard` - contains googletest (FetchContent) - `test/` folder
- `standard_with_deps` - `standard` with `deps/` folder
- `everything` - googletest, google benchmark and `deps/`

## Overall structure
- `deps/` - contains external libraries
- `src/` - project files
- `src/project/*` - project libraries
- `test/src` - folder with tests

Project libraries:
- Contain `src/` and `inc/` folders for source and include files respectively
- Contain CMakeLists which creates a library with the same name as the folder and `_lib` appended (to link and include libraries automatically) - `core` library is in `core/` folder and uses the name `core_lib`. `src/project/CMakeLists.txt` automatically goes through each directory in `src/project/*` and includes files/links with the main executable.
