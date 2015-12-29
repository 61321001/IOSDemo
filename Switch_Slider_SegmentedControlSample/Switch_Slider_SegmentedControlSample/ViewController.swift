//
//  ViewController.swift
//  Switch_Slider_SegmentedControlSample
//
//  Created by 王海洋 on 15/12/26.
//  Copyright © 2015年 王海洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //开关
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitchc: UISwitch!

    @IBOutlet weak var sliderValue: UILabel!
    
    
    
    //开关控件点击事件，设置列个开关的状态同步
    @IBAction func switchValueChanged(sender: UISwitch) {
        let setting = sender.on
        self.leftSwitch.setOn(setting, animated: true)
        self.rightSwitchc.setOn(setting, animated: true)
    }
    
    //滑块
    @IBAction func sliderValueChange(sender: UISlider) {
        self.sliderValue.text = "\(sender.value)"
    }
    
    //分段
    @IBAction func touchDown(sender: UISegmentedControl) {
        if(self.leftSwitch.hidden){
            self.rightSwitchc.hidden = false
            self.leftSwitch.hidden = false
        }else{
            self.leftSwitch.hidden = true
            self.rightSwitchc.hidden = true
        }
    }
    

}

