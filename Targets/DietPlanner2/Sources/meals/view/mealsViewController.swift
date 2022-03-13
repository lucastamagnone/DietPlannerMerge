//
//  mealsViewController.swift
//  Diet Planner
//
//  Created by Lucas on 08/03/22.
//

import UIKit

class mealsViewController: UIViewController {
   
   
   @IBOutlet weak var tableView: UITableView!
   

   let dataSource = mealsDataSource()

   
   override func viewDidLoad() {
      super.viewDidLoad()

      setupCellsTableView()
   }
   
   func setupCellsTableView() {
      
      dataSource.data.removeAll()
      
      //MARK: CustomCell
      let titleMealsCell = ​titleMealsModel()
      
      dataSource.data.append(titleMealsCell)
      
      let mealsCell = ​mealsModel()
      
      dataSource.data.append(mealsCell)
      
      let mealsCell2 = ​mealsModel()
      
      dataSource.data.append(mealsCell2)
      
      let cellTeste = ​CellTesteModel()
      
      dataSource.data.append(cellTeste)
      
      dataSource.initializeTableView(tableView: tableView)
      // Do any additional setup after loading the view.
      
      tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
   }
  
}
