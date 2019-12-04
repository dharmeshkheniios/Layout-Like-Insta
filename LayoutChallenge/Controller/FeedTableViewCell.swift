//
//  FeedTableViewCell.swift
//  LayoutChallenge
//
//  Created by Dharmesh Kheni on 04/12/19.
//  Copyright © 2019 Taka. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var imgFeed: UIImageView!
    
    var feed:Feed! {
        didSet {
            self.update()
        }
    }
    func update() {
        if let feed = feed {
            imgFeed.image = feed.image
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
