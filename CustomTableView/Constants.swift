//
//  Constants.swift
//  CustomTableView
//
//  Created by Mohamed on 4/17/20.
//  Copyright © 2020 Mohamed74. All rights reserved.
//

import Foundation


class Constants{
    
    public static func setTableData( items: inout [DataModel]){
        
        
        for _ in 0...10{
            
            
            items.append(DataModel(image: "img", title: "iOS developer", description: "Building iOS Apps for Restart Technology Company"))
            
        }
        
        
    }
}
