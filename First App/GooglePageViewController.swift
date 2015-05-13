//
//  GooglePageViewController.swift
//  First App
//
//  Created by Diogo Amaral on 5/10/15.
//  Copyright (c) 2015 Diogo Amaral. All rights reserved.
//

import UIKit

class GooglePageViewController: UIViewController {
    @IBOutlet weak var googlePageWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let targetUrl = NSURL(string: "http://diogo-amaral.branded.me")
        let request   = NSURLRequest(URL: targetUrl!)
        googlePageWebView.loadRequest(request)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func closeButtonDidTouch(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
