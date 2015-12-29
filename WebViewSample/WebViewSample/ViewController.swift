//
//  ViewController.swift
//  WebViewSample
//
//  Created by 王海洋 on 15/12/28.
//  Copyright © 2015年 王海洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    @IBAction func loadHTMLString(sender: UIButton) {
        //获取资源的全路径
        let htmlPath = NSBundle.mainBundle().pathForResource("home", ofType: "html")
        print(htmlPath)
        //获取项目的基本路径
        let bundleUrl = NSURL.fileURLWithPath(NSBundle.mainBundle().bundlePath)
        print(bundleUrl)
        do{
            //获取html字符串
            let html = try NSString(contentsOfFile: htmlPath!, encoding: NSUTF8StringEncoding)
            print(html)
            //由html字符串、项目的基本路径渲染页面
            webView.loadHTMLString(html as String, baseURL: bundleUrl)
        }catch{
            NSLog("%@", "loadHTMLString is error!")
        }
    }
  
    @IBAction func loadData(sender: UIButton) {
        //获取资源的全路径
        let htmlPath = NSBundle.mainBundle().pathForResource("home", ofType: "html")
        //获取项目的基本路径
        let bundleUrl = NSURL.fileURLWithPath(NSBundle.mainBundle().bundlePath)
        
        webView.loadData(NSData(contentsOfFile: htmlPath!)!, MIMEType: "text/html", textEncodingName: "UTF-8", baseURL: bundleUrl)
    }
   
    @IBAction func loadRequest(sender: UIButton) {
        webView.loadRequest(NSURLRequest(URL: NSURL(string: "http://www.baidu.com")!))
        
    }
    
    

}

