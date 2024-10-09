import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
//    self.window.secureApp()
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

//extension UIWindow {
//  func secureApp() {
//  let field = UITextField()
//  field.isSecureTextEntry = true
//
//  self.addSubview(field)
//  field.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//  field.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
//  self.layer.superlayer?.addSublayer(self.layer)
//  self.layer.superlayer?.first?.addSublayer(self.layer)
//
//    if #available(iOS 13.0, *) {
//      self.overrideUserInterfaceStyle = .light
//    }
//  }
//}