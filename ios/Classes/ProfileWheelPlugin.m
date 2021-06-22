#import "ProfileWheelPlugin.h"
#if __has_include(<profile_wheel/profile_wheel-Swift.h>)
#import <profile_wheel/profile_wheel-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "profile_wheel-Swift.h"
#endif

@implementation ProfileWheelPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftProfileWheelPlugin registerWithRegistrar:registrar];
}
@end
