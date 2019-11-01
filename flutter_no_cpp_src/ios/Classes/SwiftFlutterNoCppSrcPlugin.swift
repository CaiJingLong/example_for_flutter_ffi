import Flutter
import UIKit

public class SwiftFlutterNoCppSrcPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_no_cpp_src", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterNoCppSrcPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
