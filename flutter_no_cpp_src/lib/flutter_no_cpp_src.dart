import 'dart:async';

import 'package:flutter/services.dart';
import 'dart:ffi'; // For FFI
import 'dart:io'; // For Platform.isX

final DynamicLibrary nativeAddLib = Platform.isAndroid
    ? DynamicLibrary.open("libsome.so")
    : DynamicLibrary.open("some.framework/some");

final int Function(int x, int y) nativeAdd = nativeAddLib
    .lookup<NativeFunction<Int32 Function(Int32, Int32)>>("native_add")
    .asFunction();

class FlutterNoCppSrc {
  static const MethodChannel _channel =
      const MethodChannel('flutter_no_cpp_src');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static int addWithCpp(int x, int y) {
    return nativeAdd(x, y);
  }
}
