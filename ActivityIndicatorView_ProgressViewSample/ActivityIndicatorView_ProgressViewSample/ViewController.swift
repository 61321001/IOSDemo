//
//  ViewController.swift
//  ActivityIndicatorView_ProgressViewSample
//
//  Created by 王海洋 on 15/12/28.
//  Copyright © 2015年 王海洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
   
    @IBOutlet weak var progress: UIProgressView!

    @IBAction func upload(sender: UIButton) {
        if activityIndicator.isAnimating(){
            activityIndicator.stopAnimating()
        }else{
            activityIndicator.startAnimating()
        }
    }
    
    var timer:NSTimer!
    
    @IBAction func download(sender: UIButton) {
        print("download")
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "down", userInfo: nil, repeats: true)
    }

    
    func down(){
        print(progress.progress)
        if (progress.progress==1){
            timer.invalidate()
            let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: {(UIAlertAction)->Void in print("ok")})
            
            let cancelAction = UIAlertAction(title: "cancel", style: UIAlertActionStyle.Cancel, handler: {(UIAlertAction)->Void in print("cancel")})
            
            let alert = UIAlertController(title: "alert", message: "message", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(okAction)
            alert.addAction(cancelAction)
            self.presentViewController(alert, animated: true, completion: {print("显示alert")})
            
        }else{
            progress.progress = progress.progress+0.1
            print(progress.progress)
        }

    }

    
}

