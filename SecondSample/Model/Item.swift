//
//  item.swift
//  SecondSample
//
//  Created by wk.min on 08/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol Item {
    var item_height: CGFloat { get set }
    var item_type: String { get set }
    var item_cell_identifier: String { get set }
    
    init()
    func initJSON(data: Any) -> Self
}
