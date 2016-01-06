//
//  ViewController.swift
//  DatePickerSample
//
//  Created by 王海洋 on 15/12/31.
//  Copyright © 2015年 王海洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
   
    @IBOutlet weak var label: UILabel!

    @IBAction func click(sender: UIButton) {
        //获取日期
        let date = self.datePicker.date
        //日期格式化
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        self.label.text = dateFormatter.stringFromDate(date)
        
    }
    
    override func viewDidLoad() {
        //时差
        self.label.text = "\(self.datePicker.date)"
    }

    @IBAction func change(sender: UIDatePicker) {
        //日期格式化
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        self.label.text = dateFormatter.stringFromDate(sender.date)
    }
}

