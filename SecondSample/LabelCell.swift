//
//  LabelCell.swift
//  SecondSample
//
//  Created by wk.min on 11/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell, TableBaseCell  {
    
    func setView(item: Item) {
        if let header = item as? Header {
            self.itemLabel?.text = header.bold_title
        }
    }
    
    @IBOutlet weak var itemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
