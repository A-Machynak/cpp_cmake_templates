# Cmake template
Cmake template. Downloads gtest using FetchContent.

- `src/` - contains main project files
- `src/project/*` - contains project libraries
- `test/src` - contains test files (googletest)

```sh
cd build
cmake .. && make
cd src && ./my_project
cd ../test && ./project_tests
```