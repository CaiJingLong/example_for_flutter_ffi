import 'dart:async';

import 'package:flutter/services.dart';

class FlutterNoCppSrc {
  static const MethodChannel _channel =
      const MethodChannel('flutter_no_cpp_src');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
