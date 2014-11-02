//
//  ViewController.swift
//  SimpleBrowser
//
//  Created by Cliff on 2014/11/02.
//  Copyright (c) 2014年 CliffTanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField:UITextField!
    @IBOutlet var webView:UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didClickGo(AnyObject) {
        var text: String = textField.text
        var url: NSURL = NSURL(string: text)!
        var request: NSURLRequest = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }
}