//
//  ViewController.swift
//  TextField_TextViewSample
//
//  Created by 王海洋 on 15/12/26.
//  Copyright © 2015年 王海洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    //textField点击Return,放弃第一响应者
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    //textView放弃第一响应者
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        print("text = \(text)")
        if(text=="\n"){
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //注册键盘出现通知
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardDidShow:", name: UIKeyboardDidShowNotification, object: nil)
        
        //注册键盘隐藏通知
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardDidHide:", name: UIKeyboardDidHideNotification, object: nil)
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        //解除键盘出现通知
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardDidShowNotification, object: nil)
        //解除键盘隐藏通知
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardDidHideNotification, object: nil)
    }
    
    func keyboardDidShow(notification:NSNotification){
        print("键盘打开")
    }
    
    func keyboardDidHide(notification:NSNotification){
        print("键盘关闭")
    }

}

