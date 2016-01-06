//
//  ViewController.swift
//  PickerViewSample
//
//  Created by 王海洋 on 15/12/31.
//  Copyright © 2015年 王海洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource{
    
    var pickerData:NSDictionary!
    var pickerProvincesData:NSArray!
    var pickerCitiesData:NSArray!
    
    @IBOutlet weak var pickerView: UIPickerView!

    @IBOutlet weak var label: UILabel!
    
    @IBAction func onClick(sender: UIButton) {
        let row1 = self.pickerView.selectedRowInComponent(0)
        let row2 = self.pickerView.selectedRowInComponent(1)
        
        let selected1 = self.pickerProvincesData[row1] as! NSString
        let selected2 = self.pickerCitiesData[row2] as! NSString
        
        self.label.text = "\(selected1) \(selected2)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //获取资源文件路径
        let plistPath = NSBundle.mainBundle().pathForResource("provinces_cities", ofType: "plist")
        //读取资源文件
        let dict = NSDictionary(contentsOfFile: plistPath!)
        
        //字典数据
        self.pickerData = dict
        //省数据
        self.pickerProvincesData = self.pickerData.allKeys
        //默认选中的省
        let selectedProvince = self.pickerProvincesData[0] as! NSString
        //市数据
        self.pickerCitiesData = self.pickerData[selectedProvince] as! NSArray
        
//        self.pickerView.dataSource = self
//        
//        self.pickerView.delegate = self
        
    }

    //UIPickerViewDataSource 实现
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component==0 {
            return self.pickerProvincesData.count
        }else {
            return self.pickerCitiesData.count
        }
    }
    
    //UIPickerViewDelegate 实现
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component==0{
            return self.pickerProvincesData[row]  as? String
        }else{
            return self.pickerCitiesData[row] as? String
        }
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component==0{
            let selectedProvince = self.pickerProvincesData[row] as! NSString
            self.pickerCitiesData = self.pickerData[selectedProvince] as! NSArray
            self.pickerView.reloadComponent(1)
        }
    }
}

