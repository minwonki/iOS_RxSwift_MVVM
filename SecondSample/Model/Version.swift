//
//  Version.swift
//  SecondSample
//
//  Created by wk.min on 08/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Version {
    var version: String?
    var forced: Bool?
    var url: String?
    
    init(data: Any) {
        let json = JSON(data)
        self.version = json["version"].string
        self.forced = json["forced"].bool
        self.url = json["url"].string
    }
}
