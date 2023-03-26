# Cmake template
Cmake template. Downloads gtest using FetchContent.

- `src/` - contains main project files
- `src/project/*` - contains project libraries
- `deps/*` - contains external libraries
- `test/src` - contains test files (googletest)

## Usage
```sh
cd build
cmake .. && make
cd src && ./my_project
cd ../test && ./project_tests
```
