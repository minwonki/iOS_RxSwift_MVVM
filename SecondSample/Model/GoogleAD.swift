//
//  GoogleAD.swift
//  SecondSample
//
//  Created by wk.min on 13/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import Foundation
import SwiftyJSON

class GoogleAD: Item {
    var item_height: CGFloat = CGFloat(40)
    var item_type: String = ""
    var item_cell_identifier: String = "GoogleADCell"
    var title: String?
    
    required init() {}
    
    func initJSON(data: Any) -> Self {
        let json = JSON(data)
        self.title = json["ad_unit_id"].string
        
        return self
    }
}
