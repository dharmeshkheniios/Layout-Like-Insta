//
//  FeedCollectionViewCell.swift
//  LayoutChallenge
//
//  Created by Taka on 04.12.19.
//  Copyright © 2019 Taka. All rights reserved.
//

import UIKit

class FeedCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var backgroundImage:UIImageView!
    
    var feed:Feed! {
        didSet {
            self.update()
        }
    }
    func update() {
        if let feed = feed {
            backgroundImage.image = feed.image
        }
    }
}
