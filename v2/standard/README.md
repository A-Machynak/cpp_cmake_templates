# Cmake template
Cmake template. Downloads gtest and gbench using FetchContent if required.
The project builds a library (`my_project/*.c*`, `src/dev/*.h*`) and an executable (`app/*.c*`, `app/*.h*`), which links with the library.

## Usage
1. Open `CMakeLists.txt` and set the project name, C++ version, enable/disable testing/benchmarks and others...
2. Run cmake. It will create a folder (named after your project name) for your header files.

```sh
mkdir build
cd build
cmake ..
```

```sh
make
./my_project_app
```

## Notes
- If `APP_DIRECTORY`, `DEPS_DIRECTORY`, `BENCH_DIRECTORY` or `TEST_DIRECTORY` don't exist, they are simply ignored - for ex. if you don't need benchmarks, then you can simply delete the `bench/` folder.
- `deps/` might require more fine-tuning depending on which library you are importing.
