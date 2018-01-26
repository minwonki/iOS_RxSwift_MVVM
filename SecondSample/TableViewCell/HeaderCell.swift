//
//  HeaderCell.swift
//  SecondSample
//
//  Created by wk.min on 13/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell, TableBaseCell {
    
    func setView(item: Item) {
        if let header : Header = item as? Header {
            self.title.text = header.bold_title
        }
    }
    
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
