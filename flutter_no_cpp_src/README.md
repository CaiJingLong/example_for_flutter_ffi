# flutter_no_cpp_src

## No source project

Simulate a situation without source code.
Ios use framework.
Android using so.

Compile cpp-source with cmake, xcodebuild, ndk, clang

### android

Compile so:

```bash
cd cpp-source
cd android
./build_android
```

### ios

Compile framework:

```bash
cd app-source
cd ios
./build_ios
```

## Usage

```bash
cd example
flutter pub get
flutter run
```

## Other information

[ios-cmake](https://github.com/leetal/ios-cmake)

[build with framework](https://blog.csdn.net/zhaowd2001/article/details/89925284)
