import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {

  // Do a quick check to see if you've provided an API key, in a real app you wouldn't need this
      // but for the demo it means we can provide a better error message if you haven't.
       GMSServices.provideAPIKey("AIzaSyAYycX-rwhmiEbnpofJzkQi_xYFTnNb3QU")

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
