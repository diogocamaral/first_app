//
//  StoriesTableViewController.swift
//  First App
//
//  Created by Diogo Amaral on 5/11/15.
//  Copyright (c) 2015 Diogo Amaral. All rights reserved.
//

import UIKit

class StoriesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    @IBAction func menuButtonDidTouch(sender: AnyObject) {
        performSegueWithIdentifier("MenuSegue", sender: self)
    }
    
    @IBAction func loginButtonDidTouch(sender: AnyObject) {
        performSegueWithIdentifier("LoginSegue", sender: self)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // Content Cell
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("StoryCell") as! StoryTableViewCell
        
        cell.titleLabel.text = "Diogo é foda pra caralho"
        cell.badgeImageView.image = UIImage(named: "badge-apple")
        cell.timeLabel.text = "4m"
        cell.authorLabel.text = "Diogo Carvalhais do Amaral"
        cell.avatarImageView.image = UIImage(named: "content-avatar-default")
        cell.upvoteButton.setTitle("340", forState: UIControlState.Normal)
        cell.commentsButton.setTitle("187", forState: UIControlState.Normal)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("WebSegue", sender: self)
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

}
