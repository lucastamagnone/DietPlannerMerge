//
//  Helper.swift
//  Lucas
//
//  Created by Lucas on 26/02/22.
//

import UIKit


protocol TableViewCompatible {
    
    var reuseIdentifier: String { get }
    
    func cellForTableView(tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell
    
}

