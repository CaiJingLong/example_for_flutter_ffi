rm -fr build
mkdir build

cd build

cmake .. -G Xcode -DCMAKE_TOOLCHAIN_FILE=../ios.toolchain.cmake -DPLATFORM=OS64COMBINED
cmake --build . --config Release --target install

cd ..

ABIS=("iphonesimulator12.2" "iphoneos12.2")
for abi in $ABIS;
do
ABI=$abi sh cmd/ios_abi_build.sh
done

# cd build/output

# mkdir fat

# mkdir fat-lib
# lipo -create -output fat-lib/libsome.a Release-iphoneos/libsome.a Release-iphonesimulator/libsome.a

# export TARGET=../../../ios
# cp fat-lib/libsome.a $TARGET/lib
# cp ../../src/*.h $TARGET/Classes
