//
//  ViewController.swift
//  LayoutChallenge
//
//  Created by Taka on 04.12.19.
//  Copyright © 2019 Taka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var feedCollectionView: UICollectionView!
    
    let categories = Category.load() // Load data
    let feeds = Feed.load()
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCollectionView.dataSource = self
        categoriesCollectionView.delegate = self
        feedCollectionView.dataSource = self
        feedCollectionView.delegate = self
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UICollectionViewDelegate {
    // Not sure when to use this
}

// Diese Erweiterung legt die Datenquelle einer Collection View fest
extension ViewController: UICollectionViewDataSource {
    // Wie viele Reihen?
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    // Wie viele Objekete soll es geben?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == categoriesCollectionView {
            return categories.count
        }
        else {
            return feeds.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == categoriesCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
            let category = categories[indexPath.item]
            cell.category = category
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeedCollectionViewCell", for: indexPath) as! FeedCollectionViewCell
            let feed = feeds[indexPath.item]
            cell.feed = feed
            return cell
        }
    }
}

// Größe der Zellen...Sehr intuitiv..... Danke Apple
extension ViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
            UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            if collectionView == categoriesCollectionView {
                return CGSize(width: 150, height: 75) // Collection View size right?
            }
            else {
                return CGSize(width: 374, height: 494)
            }
                
}

}
