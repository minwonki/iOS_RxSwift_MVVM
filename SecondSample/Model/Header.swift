//
//  Header.swift
//  SecondSample
//
//  Created by wk.min on 13/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import Foundation
import SwiftyJSON

class Header: Item {
    var item_height: CGFloat = CGFloat(40)
    var item_cell_identifier: String = "HeaderCell"
    var item_type: String = ""
    var bold_title: String?
    
    required init() {}
    
    func initJSON(data: Any) -> Self {
        let json = JSON(data)
        self.bold_title = json["bold_title"].string
        self.item_type = json["item_type"].string!
        
        return self
    }
    
}
