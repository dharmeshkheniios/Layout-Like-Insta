//
//  CategoryCollectionViewCell.swift
//  LayoutChallenge
//
//  Created by Taka on 04.12.19.
//  Copyright © 2019 Taka. All rights reserved.
//

import UIKit

// Control contents of Cell
class CategoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var container:UIView!
    @IBOutlet weak var label:UILabel!
    
    
    // Saw this in a tutorial
    //
    var category:Category! {
        didSet {
            self.update()
        }
    }
    // Aktualisiere
    func update(){
        let colors:[UIColor] = [#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1), #colorLiteral(red: 0.2894071043, green: 0.9341720343, blue: 0.969543159, alpha: 1), #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), #colorLiteral(red: 0.7254902124, green: 0.1283889892, blue: 0.1148036011, alpha: 1)]
        let color = Int.random(in: 0..<colors.count)
        if let category = category {
            container.layer.cornerRadius = 20
            container.backgroundColor = colors[color]
            label.text = category.name
        }
        else{
            print("ERROR")
        }
    }
}
