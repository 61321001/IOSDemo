//
//  ViewController.swift
//  NavigationBarSample
//
//  Created by 王海洋 on 15/12/30.
//  Copyright © 2015年 王海洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
  
    @IBAction func save(sender: UIBarButtonItem) {
        self.label.text = "save"
    }

    @IBAction func add(sender: UIBarButtonItem) {
        self.label.text = "add"
    }

}

