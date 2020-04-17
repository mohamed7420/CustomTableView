//
//  ViewController.swift
//  CustomTableView
//
//  Created by Mohamed on 4/17/20.
//  Copyright © 2020 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var items = [DataModel]()
    
    var tableViewDataSource: TableViewDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Constants.setTableData(items: &items)
        
        tableViewDataSource = TableViewDataSource(self, tableView: tableView, items: items)
    }
    
    @IBAction func buttonEditTapped(_ sender: UIBarButtonItem) {
        
        tableView.isEditing = !tableView.isEditing
        
    }
    
}

