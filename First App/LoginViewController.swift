//
//  LoginViewController.swift
//  First App
//
//  Created by Diogo Amaral on 4/28/15.
//  Copyright (c) 2015 Diogo Amaral. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var dialogView: DesignableView!
    
    @IBAction func loginButtonDidTouch(sender: AnyObject) {
        dialogView.animation = "shake"
        dialogView.animate()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
