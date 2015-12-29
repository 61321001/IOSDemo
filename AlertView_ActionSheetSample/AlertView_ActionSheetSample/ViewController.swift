//
//  ViewController.swift
//  AlertView_ActionSheetSample
//
//  Created by 王海洋 on 15/12/29.
//  Copyright © 2015年 王海洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var actionSheetBtn: UIButton!

    @IBAction func alertView(sender: UIButton) {
        let alert = UIAlertController(title: "alert", message: "message", preferredStyle: UIAlertControllerStyle.Alert)
            
        alert.addAction(UIAlertAction(title: "cancel", style: UIAlertActionStyle.Cancel, handler: {(UIAlertAction)->Void in print("cancel")}))
        
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: {(UIAlertAction)->Void in print("ok")}))
        
        self.presentViewController(alert, animated: true, completion: {print("显示alert")})

    }
    
    @IBAction func actionSheetView(sender: UIButton) {

        let actionSheet = UIAlertController(title: "actionSheet", message: "message", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: {(UIAlertAction)->Void in print("取消")}))
        
        actionSheet.addAction(UIAlertAction(title: "破坏性按钮", style: UIAlertActionStyle.Destructive, handler: {(UIAlertAction)->Void in print("破坏性按钮")}))
        
        actionSheet.addAction(UIAlertAction(title: "新浪微博", style: UIAlertActionStyle.Default, handler: {(UIAlertAction)->Void in print("新浪微博")}))
        
        //如果是ipad平台，设置锚点
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.Pad {
            actionSheet.modalPresentationStyle = UIModalPresentationStyle.Popover
            if let ppc = actionSheet.popoverPresentationController{
                ppc.sourceView = sender
                ppc.sourceRect = sender.bounds
                ppc.permittedArrowDirections = UIPopoverArrowDirection.Up
//                ppc.backgroundColor = UIColor.yellowColor()
            }
        }
        
        self.presentViewController(actionSheet, animated: true, completion: {print("显示actionSheet")})
        
    }


}

