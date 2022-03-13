//
//  mealsModelCell.swift
//  Diet Planner
//
//  Created by Lucas on 08/03/22.
//

import UIKit

class mealsModelCell: UITableViewCell {
   
   @IBOutlet weak var verticalLine: UIView!
   @IBOutlet weak var checkAdd: UIImageView!
   @IBOutlet weak var gradientGreenLine: UIImageView!
   @IBOutlet weak var addDailyButton: UIButton!
   @IBOutlet weak var addFillButton: UIButton!
   @IBOutlet weak var labelSubtitleMeals: UILabel!
   @IBOutlet weak var constraintMenuSubtitle: NSLayoutConstraint!
   
   override func awakeFromNib() {
      super.awakeFromNib()
      
//      configConstraintMenuSubtitle()
      configButton()
      addTapButton()
   }
   
   
   func configButton() {
      let colorPrimary = UIColor(red: 4/255, green: 108/255, blue: 230/255, alpha: 1)
      
      addDailyButton.layer.borderWidth = 2
      addDailyButton.layer.borderColor = colorPrimary.cgColor
      addDailyButton.setTitleColor(colorPrimary, for: .normal)
   }
   
//   func configConstraintMenuSubtitle() {
//
//      if labelSubtitleMeals.countLines() == 2 {
//         constraintMenuSubtitle.constant = 4
//
//      } else if labelSubtitleMeals.countLines() == 1 {
//         constraintMenuSubtitle.constant = 14
//      }
//   }
   
   func isHiddenVerticalLine() {
      
      verticalLine.isHidden = true
   }
   
   func addTapButton() {
      
      addDailyButton.addTarget(self, action: #selector(selectToggleButton), for: .touchUpInside)
      addFillButton.addTarget(self, action: #selector(selectToggleButton), for: .touchUpInside)
   }
   
   
   
   @objc func selectToggleButton()  {

      addFillButton.isHidden.toggle()
      checkAdd.isHidden.toggle()
      gradientGreenLine.isHidden.toggle()

   }
   
   override func setSelected(_ selected: Bool, animated: Bool) {
      super.setSelected(selected, animated: animated)
   }
}
