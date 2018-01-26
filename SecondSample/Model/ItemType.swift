//
//  ItemType.swift
//  SecondSample
//
//  Created by wk.min on 14/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import Foundation

struct ItemType {
    
    var itemTypeString: String?
    var itemTypeCellName: String?
    var itemTypeClass: Item.Type?
    
    static func getItemType() -> Array<ItemType> {
        var items: Array<ItemType> = Array<ItemType>()
        
        items.append(ItemType(itemTypeString: "HEADER", itemTypeCellName: "HeaderCell", itemTypeClass: Header.self))
        items.append(ItemType(itemTypeString: "JOB_POSTING", itemTypeCellName: "JobPostingCell", itemTypeClass: JobPosting.self))
        items.append(ItemType(itemTypeString: "BANNER_GOOGLE_AD", itemTypeCellName: "GoogleADCell", itemTypeClass: GoogleAD.self))
        
        return items
    }
}
