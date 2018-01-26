//
//  JobPostingCell.swift
//  SecondSample
//
//  Created by wk.min on 11/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import UIKit
import SDWebImage

class JobPostingCell: UITableViewCell, TableBaseCell {
   
    func setView(item: Item) {
        if let posting = item as? JobPosting {
            self.jobPostingTitle.text = posting.title
            self.jobPostingImage.sd_setImage(with: URL(string: posting.logo_url!), completed: nil )
        }
    }
    
    @IBOutlet weak var jobPostingTitle: UILabel!
    @IBOutlet weak var jobPostingImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
