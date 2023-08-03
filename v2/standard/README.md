# Cmake template
Cmake template. Downloads gtest and gbench using FetchContent if required.
The project builds a library (`my_project/*.c*`, `src/dev/*.h*`) and an executable (`app/*.c*`, `app/*.h*`), which links with the library.

## Usage
1. Rename `my_project` folder to you project's name.
2. Set project name, C++ version and enable/disable testing/benchmarks in `CMakeLists.txt`

```sh
mkdir build
cd build
cmake .. && make
./my_project_app
```
