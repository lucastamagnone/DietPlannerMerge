//
//  ViewController.swift
//  Diet Planner
//
//  Created by Pedro Henrique de Souza Leal on 25/02/22.
//

import UIKit



class Tela_0: UIViewController {
   
   @IBOutlet weak var tela1Button: RoundButton!
   @IBOutlet weak var tela2Button: RoundButton!
   @IBOutlet weak var tela3Button: RoundButton!
   @IBOutlet weak var tela4Button: RoundButton!
   @IBOutlet weak var tela5Button: RoundButton!
   @IBOutlet weak var tela6Button: RoundButton!
   

    override func viewDidLoad() {
        super.viewDidLoad()
      
      tela1Button.addTarget(self, action: #selector(goTela_1), for: .touchUpInside)
      tela2Button.addTarget(self, action: #selector(goTela_2), for: .touchUpInside)
      tela3Button.addTarget(self, action: #selector(goTela_3), for: .touchUpInside)
      tela4Button.addTarget(self, action: #selector(goTela_4), for: .touchUpInside)
      tela5Button.addTarget(self, action: #selector(goTela_5), for: .touchUpInside)
      tela6Button.addTarget(self, action: #selector(goTela_6), for: .touchUpInside)

      
      let now = Date()
      let formatter = DateFormatter()
      formatter.locale = Locale(identifier: "pt_BR")
      formatter.setLocalizedDateFormatFromTemplate("EEE, dd MMMM")
      let now2 = formatter.string(from: now).replacingOccurrences(of: ".", with: "")
      
      print(now2)
      
      var components = DateComponents()
      components.hour = 8
      components.minute = 30
      let date = Calendar.current.date(from: components)!
      print(date)
      
      let date2 = Calendar.current.date(bySettingHour: 9, minute: 30, second: 0, of: Date())!
      print(date2)
      
      func getCurrentTimeZone() -> String{

                  return TimeZone.current.identifier

           }

           let currentTimeZone = getCurrentTimeZone()
            print(currentTimeZone)
      
      let currentDate = Date()
       
       
      // 1) Create a DateFormatter() object.
      let format = DateFormatter()
       
      // 2) Set the current timezone to .current, or America/Chicago.
      format.timeZone = .current
       
      // 3) Set the format of the altered date.
      format.dateFormat = "HH:mm"
       
      // 4) Set the current date, altered by timezone.
      let dateString = format.string(from: currentDate)
      print(dateString)
    }
   
   

   
   
   
   
   
//   @objc func didTapButton() {
//
//      goTela_1()
//
//   }
   
   @objc func goTela_1() {


      let storyboard = UIStoryboard(name: "Main", bundle: nil)

      let controller = storyboard.instantiateViewController(withIdentifier: "Tela_1")
      controller.modalPresentationStyle = .formSheet
      controller.modalTransitionStyle = .flipHorizontal

      self.present(controller, animated: true, completion: nil)

   }
   
   @objc func goTela_2() {


      let storyboard = UIStoryboard(name: "Main", bundle: nil)

      let controller = storyboard.instantiateViewController(withIdentifier: "Tela_2")
      controller.modalPresentationStyle = .formSheet
      controller.modalTransitionStyle = .flipHorizontal

      self.present(controller, animated: true, completion: nil)

   }
   
   @objc func goTela_3() {


      let storyboard = UIStoryboard(name: "Main", bundle: nil)

      let controller = storyboard.instantiateViewController(withIdentifier: "Tela_3")
      controller.modalPresentationStyle = .formSheet
      controller.modalTransitionStyle = .flipHorizontal

      self.present(controller, animated: true, completion: nil)

   }
   
   @objc func goTela_4() {


      let storyboard = UIStoryboard(name: "Main", bundle: nil)

      let controller = storyboard.instantiateViewController(withIdentifier: "Tela_4")
      controller.modalPresentationStyle = .formSheet
      controller.modalTransitionStyle = .flipHorizontal

      self.present(controller, animated: true, completion: nil)

   }
   
   @objc func goTela_5() {


      let storyboard = UIStoryboard(name: "Main", bundle: nil)

      let controller = storyboard.instantiateViewController(withIdentifier: "Tela_5")
      controller.modalPresentationStyle = .formSheet
      controller.modalTransitionStyle = .flipHorizontal

      self.present(controller, animated: true, completion: nil)

   }
   
   @objc func goTela_6() {


      let storyboard = UIStoryboard(name: "Main", bundle: nil)

      let controller = storyboard.instantiateViewController(withIdentifier: "Tela_6")
      controller.modalPresentationStyle = .formSheet
      controller.modalTransitionStyle = .flipHorizontal

      self.present(controller, animated: true, completion: nil)

   }
   
//   @IBAction func goTela1(_ sender: Any) {
//      let storyboard = UIStoryboard(name: "Main", bundle: nil)
//
//      let controller = storyboard.instantiateViewController(withIdentifier: "Tela_1")
//      controller.modalPresentationStyle = .formSheet
//      controller.modalTransitionStyle = .flipHorizontal
//
//      self.present(controller, animated: true, completion: nil)
//
//   }
}




