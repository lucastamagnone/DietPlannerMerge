//
//  titleMealsModelCell.swift
//  Diet Planner
//
//  Created by Lucas on 08/03/22.
//

import UIKit
import GlobalHelpers

class titleMealsModelCell: UITableViewCell {
   
   @IBOutlet weak var labelTitleMeals: UILabel!
   

    override func awakeFromNib() {
        super.awakeFromNib()
      titleMealsDate()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
   func titleMealsDate() {

      let now = Date()
      let formatter = DateFormatter()
      formatter.locale = Locale(identifier: "pt_BR")
      formatter.setLocalizedDateFormatFromTemplate("EEE, dd MMMM")
      let formattedDate = formatter.string(from: now).replacingOccurrences(of: ".", with: "").capitalizingFirstLetter()

      labelTitleMeals.text = formattedDate
   }
    
}


