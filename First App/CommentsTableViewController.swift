//
//  CommentsTableViewController.swift
//  First App
//
//  Created by Diogo Amaral on 5/14/15.
//  Copyright (c) 2015 Diogo Amaral. All rights reserved.
//

import UIKit

class CommentsTableViewController: UITableViewController {

    var story = [String:AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println(story)
    }
}
