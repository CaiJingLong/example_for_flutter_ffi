#import "FlutterNoCppSrcPlugin.h"
#import <flutter_no_cpp_src/flutter_no_cpp_src-Swift.h>

@implementation FlutterNoCppSrcPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterNoCppSrcPlugin registerWithRegistrar:registrar];
}
@end
