# Cmake template
Cmake template. Downloads gtest and gbench using FetchContent if required.
The project builds a library (`include/my_project/*.h*`, `dev/src/*.c*`) and an executable (`app/*.c*`, `app/*.h*`), which links with the library.

## Usage
1. Open `CMakeLists.txt` and set the project name, C++ version, enable/disable testing/benchmarks and others...
2. Run cmake. It will create a folder in `include/` (named after your project name) for your header files.

```sh
mkdir build
cd build
cmake ..
```

```sh
make
./my_project_app
```

## Documentation
Doxygen is used for generating documentation. `dev/doc` contains a `Doxyfile`, which generates an html output in `dev/doc/html`.
The project name needs to be set manually in the `Doxyfile`.

### Usage
In the root of the project:
```sh
doxygen dev/doc/Doxyfile
```

## Notes
- If `APP_DIRECTORY`, `DEPS_DIRECTORY`, `BENCH_DIRECTORY` or `TEST_DIRECTORY` don't exist, they are simply ignored - for ex. if you don't need benchmarks, then you can simply delete the `bench/` folder.
- `deps/` might require more fine-tuning depending on which library you are importing.
