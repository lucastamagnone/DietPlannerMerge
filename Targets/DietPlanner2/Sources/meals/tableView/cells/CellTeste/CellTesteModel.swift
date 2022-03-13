//
//  CellTesteModel.swift
//  DietPlanner2
//
//  Created by Lucas on 13/03/22.
//  Copyright © 2022 lealapps. All rights reserved.
//

import UIKit
import GlobalHelpers

class ​CellTesteModel: TableViewCompatible {
   
   
   var reuseIdentifier: String {
      return "CellTesteModelCellIdentifier"
   }
   
   
   func cellForTableView(tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell {
      
      if let cell = tableView.dequeueReusableCell(withIdentifier: self.reuseIdentifier, for: indexPath) as? CellTesteTableViewCell {
         
         return cell
         
      } else {
         
         let cell = tableView.dequeueReusableCell(withIdentifier: self.reuseIdentifier, for: indexPath)
         
         return cell
      }
   }
}
