//
//  DemoWithTableViewController.swift
//  LayoutChallenge
//
//  Created by Dharmesh Kheni on 04/12/19.
//  Copyright © 2019 Taka. All rights reserved.
//

import UIKit

class DemoWithTableViewController: UIViewController {
    
    //MARK:- @IBOutlet
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var tblFeed: UITableView!
    
    //MARK:- Properties
    let categories = Category.load()
    let feeds = Feed.load()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}

//MARK:- Setup UI
extension DemoWithTableViewController {
    
    func setupUI() {
        
        categoriesCollectionView.dataSource = self
        tblFeed.dataSource = self
        tblFeed.delegate = self
    }
}

//MARK:- UICollectionViewDataSource
extension DemoWithTableViewController: UICollectionViewDataSource {
    
    // Wie viele Objekete soll es geben?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
        let category = categories[indexPath.item]
        cell.category = category
        return cell
    }
}

//MARK:- UITableViewDataSource
extension DemoWithTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tblFeed.dequeueReusableCell(withIdentifier: "FeedTableViewCell") as! FeedTableViewCell
        let feed = feeds[indexPath.item]
        cell.feed = feed
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 360
    }
}
