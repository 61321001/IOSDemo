//
//  ViewController.swift
//  GetScreen
//
//  Created by 王海洋 on 15/12/30.
//  Copyright © 2015年 王海洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var deviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let iosDeviceScreenSize = UIScreen.mainScreen().bounds.size
        let s = "\(iosDeviceScreenSize.width) x \(iosDeviceScreenSize.height)"
        print(s)

        self.label.text = s
        
        if UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Phone {
            
        }
        
        switch UIDevice.currentDevice().userInterfaceIdiom {
            case UIUserInterfaceIdiom.Phone:
                if iosDeviceScreenSize.height>iosDeviceScreenSize.width{
                    //竖屏
                    switch iosDeviceScreenSize.height{
                        case 568:
                            print("iPhone 5/5s/5c (iPod touch 5)")
                            deviceLabel.text = "iPhone 5/5s/5c (iPod touch 5)"
                            break
                        case 667:
                            print("iPhone 6/6s")
                            deviceLabel.text = "iPhone 6/6s"
                            break
                        case 736:
                            print("iPhone 6/6s Plus")
                            deviceLabel.text = "iPhone 6/6s Plus"
                            break
                        default:
                            print("iPhone 4s 等其他设备")
                            deviceLabel.text = "iPhone 4s 等其他设备"
                            break
                    }
                }else{
                    //横屏
                    switch iosDeviceScreenSize.width{
                    case 568:
                        print("iPhone 5/5s/5c (iPod touch 5)")
                        deviceLabel.text = "iPhone 5/5s/5c (iPod touch 5)"
                        break
                    case 667:
                        print("iPhone 6/6s")
                        deviceLabel.text = "iPhone 6/6s"
                        break
                    case 736:
                        print("iPhone 6/6s Plus")
                        deviceLabel.text = "iPhone 6/6s Plus"
                        break
                    default:
                        print("iPhone 4s 等其他设备")
                        deviceLabel.text = "iPhone 4s 等其他设备"
                        break
                    }

                }
                
                break
            case UIUserInterfaceIdiom.Pad:
                print("iPad")
                deviceLabel.text = "iPad"
                break
            case UIUserInterfaceIdiom.Unspecified:
                print("其他设备")
                deviceLabel.text = "其他设备"
                break
            default:break
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

