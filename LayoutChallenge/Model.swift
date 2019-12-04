//
//  Model.swift
//  LayoutChallenge
//
//  Created by Taka on 04.12.19.
//  Copyright © 2019 Taka. All rights reserved.
//

import UIKit
//Model file that holds logic for categories and feed
struct Category {
    let name:String
    
    // Load data(Normally from database or so)
    static func load() -> [Category] {
        var categories:[Category] = []
        let names:[String] = ["Design", "Research", "Beauty", "Travel", "Makeup"]
        for name in names{
            categories.append(Category(name:name))
        }
        categories.shuffle()
        return categories
    }
}

struct Feed {
    var image:UIImage
    
    static func load() -> [Feed] {
        var feeds:[Feed] = []
        let images:[UIImage] = [#imageLiteral(resourceName: "MKBHD"), #imageLiteral(resourceName: "ELON"), #imageLiteral(resourceName: "President_Barack_Obama"), #imageLiteral(resourceName: "sergej")]
        for image in images {
            feeds.append(Feed(image: image))
        }
        return feeds
    }
}
