//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by 王海洋 on 16/1/6.
//  Copyright © 2016年 王海洋. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
    
    var events:NSArray!

    override func viewDidLoad() {
        super.viewDidLoad()
        //资源在文件夹中
//        let plistPath = NSBundle.mainBundle().pathForResource("Olympics_Pic/events", ofType: "plist")
        //资源在组中
        let plistPath = NSBundle.mainBundle().pathForResource("events", ofType: "plist")
        self.events = NSArray(contentsOfFile: plistPath!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //UICollectionViewDelegate
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let event = self.events[indexPath.section*2 + indexPath.row] as! NSDictionary
        print("\(event["name"]!)")
    }
    
    //UICollectionViewDataSource
    //视图中节的个数
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return self.events.count/2
    }
    //节中列的个数
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    //为单元格提供显示数据
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! Cell
        print("events.index=\(indexPath.section*2 + indexPath.row)")
        let event = self.events[indexPath.section*2 + indexPath.row] as! NSDictionary
        cell.label.text = event["name"] as? String
        let imageFile = event["image"] as! String
        print("imageFile=\(imageFile)")
        //资源在文件夹中
//        cell.imgView.image = UIImage(named: "Olympics_Pic/\(imageFile)")
        //资源在组中
        cell.imgView.image = UIImage(named: imageFile)
        return cell
    }
    
}

