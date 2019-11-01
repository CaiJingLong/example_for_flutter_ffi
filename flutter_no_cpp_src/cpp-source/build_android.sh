cmake \
-DANDROID_ABI=armeabi-v7a \
-DANDROID_PLATFORM=android-15 \
-DCMAKE_BUILD_TYPE=release \
-DANDROID_NDK=/Users/cai/Library/Android/sdk/ndk-bundle \
-DCMAKE_TOOLCHAIN_FILE=/Users/cai/Library/Android/sdk/ndk-bundle/build/cmake/android.toolchain.cmake \
-DANDROID_TOOLCHAIN=clang .