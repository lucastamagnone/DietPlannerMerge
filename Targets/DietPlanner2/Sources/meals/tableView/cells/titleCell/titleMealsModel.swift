//
//  titleMealsModel.swift
//  Diet Planner
//
//  Created by Lucas on 08/03/22.
//

import UIKit

class ​titleMealsModel: TableViewCompatible {
   
   
   var reuseIdentifier: String {
      return "titleMealsModelCellIdentifier"
   }
   
   
   func cellForTableView(tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell {
      
       if let cell = tableView.dequeueReusableCell(withIdentifier: self.reuseIdentifier, for: indexPath) as? titleMealsModelCell {
         
         cell.selectionStyle = .none
         
         return cell
         
      } else {
         
         let cell = tableView.dequeueReusableCell(withIdentifier: self.reuseIdentifier, for: indexPath)
         
         return cell
      }
   }
}

