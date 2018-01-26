//
//  JobPosting.swift
//  SecondSample
//
//  Created by wk.min on 13/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import Foundation
import SwiftyJSON

class JobPosting: Item {
    var item_height: CGFloat = CGFloat(90)
    var item_cell_identifier: String = "JobPostingCell"
    var item_type: String = ""
    var title: String?
    var logo_url: String?
    
    required init() {}
    
    func initJSON(data: Any) -> Self {
        let json = JSON(data)
        self.title = json["title"].string
        self.logo_url = json["logo_url"].string
        self.item_type = json["item_type"].string!
        
        return self
    }
}
