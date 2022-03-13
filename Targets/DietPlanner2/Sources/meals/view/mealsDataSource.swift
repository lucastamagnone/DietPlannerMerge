//
//  mealsDataSource.swift
//  Diet Planner
//
//  Created by Lucas on 08/03/22.
//

import UIKit

class mealsDataSource: NSObject {
   
   var data = [Any]()
   
   func initializeTableView(tableView : UITableView){
      
      tableView.dataSource = self
      tableView.delegate = self
      
      
      tableView.register(UINib(nibName: "mealsModelCell", bundle: Bundle.main), forCellReuseIdentifier: "mealsModelCellIdentifier")
      
      tableView.register(UINib(nibName: "titleMealsModelCell", bundle: Bundle.main), forCellReuseIdentifier: "titleMealsModelCellIdentifier")
   }
}


extension mealsDataSource: UITableViewDataSource, UITableViewDelegate {
   
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      data.count
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
      if let mealsCell = data[indexPath.row] as? ​mealsModel {
         return mealsCell.cellForTableView(tableView: tableView, atIndexPath: indexPath)
         
      }
      
      if let titleMealsCell = data[indexPath.row] as? ​titleMealsModel {
            return titleMealsCell.cellForTableView(tableView: tableView, atIndexPath: indexPath)
         
      } else {
         return UITableViewCell()
         
      }
   }
}

