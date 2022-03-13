import UIKit
//import DietPlanner2Kit
//import DietPlanner2UI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
      
      self.window = UIWindow(frame: UIScreen.main.bounds)
      let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
      
      let VC: UIViewController = mainStoryboard.instantiateViewController(withIdentifier: "Tela_0")
      
      self.window?.rootViewController = VC
      self.window?.makeKeyAndVisible()
      
        return true
    }

}
