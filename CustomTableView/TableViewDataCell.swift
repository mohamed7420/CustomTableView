//
//  TableViewDataCell.swift
//  CustomTableView
//
//  Created by Mohamed on 4/17/20.
//  Copyright © 2020 Mohamed74. All rights reserved.
//

import UIKit

class TableViewDataCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var labelDescription: UILabel!
    
    @IBOutlet weak var roundedView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    
    func set(dataModel: DataModel){
        
        profileImage.image = UIImage(named: dataModel.image)
        
        labelTitle.text = dataModel.title
        
        labelDescription.text = dataModel.desc
    }
   
}
