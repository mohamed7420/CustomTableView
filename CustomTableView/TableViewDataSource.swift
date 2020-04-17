//
//  TableViewDataSource.swift
//  CustomTableView
//
//  Created by Mohamed on 4/17/20.
//  Copyright © 2020 Mohamed74. All rights reserved.
//

import UIKit


class TableViewDataSource: NSObject , UITableViewDelegate , UITableViewDataSource{
    
    var vc: UIViewController
    
    var items: [DataModel]
    
    var tableView: UITableView
    
    init(_ vc: UIViewController , tableView: UITableView , items: [DataModel]) {
        
        self.vc = vc
        
        self.tableView = tableView
        
        self.items = items
        
        super.init()
        
        tableView.delegate = self
        
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "TableViewDataCell", bundle: nil), forCellReuseIdentifier: "TableViewDataCell")
        
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewDataCell", for: indexPath) as! TableViewDataCell
        
        cell.set(dataModel: items[indexPath.row])
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return Sections.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let newItem = items[sourceIndexPath.item]
        
        items.remove(at: sourceIndexPath.item)
        
        items.insert(newItem, at: sourceIndexPath.item)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            
            items.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let section = Sections.allCases[section]
   
        
        switch section {
        
        case .Developers:
        
            return "Developers"
        
        case .Tester:
          
            return "Tester"
            
        case .Programmer:
            
            return "Programmer"
            
        case .Engineer:
         
            return "Engineer"
        }
        
    }
   
}

enum Sections: CaseIterable{
    
    case Developers
    
    case Tester
    
    case Programmer
    
    case Engineer
    
}

