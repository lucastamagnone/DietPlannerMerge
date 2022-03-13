//
//  mealsModel.swift
//  Diet Planner
//
//  Created by Lucas on 08/03/22.
//

import UIKit

class ​mealsModel: TableViewCompatible {
   
   var reuseIdentifier: String {
      return "mealsModelCellIdentifier"
   }
   
   func cellForTableView(tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell {
      
      if let cell = tableView.dequeueReusableCell(withIdentifier: self.reuseIdentifier, for: indexPath) as? mealsModelCell {
         
         let secondCell = indexPath.firstIndex(of: 1)
         
         if indexPath.row == secondCell {
            cell.isHiddenVerticalLine()
         }
         
         cell.selectionStyle = .none
         
         return cell
         
      } else {
         
         let cell = tableView.dequeueReusableCell(withIdentifier: self.reuseIdentifier, for: indexPath)
         
         return cell
      }
   }
}
