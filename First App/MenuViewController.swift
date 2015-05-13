//
//  MenuViewController.swift
//  First App
//
//  Created by Diogo Amaral on 5/11/15.
//  Copyright (c) 2015 Diogo Amaral. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var dialogView: DesignableView!
    
    @IBAction func closeButtonDidTouch(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        dialogView.animation = "fall"
        dialogView.animate()
    }
    
}
