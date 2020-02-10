import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?)->Bool{
        print("The class \(type(of: self)) did launch")
        FirebaseApp.configure()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
          print("The class \(type(of: self)) will enter background")
    }
      
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("The class \(type(of: self)) did enter background")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("The class \(type(of: self)) will enter foreground")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("The class \(type(of: self)) did enter foreground")
    }

    
    func applicationWillTerminate(_ application: UIApplication) {
        print("The class \(type(of: self)) will terminate")
    }


}

