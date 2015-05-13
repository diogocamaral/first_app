//
//  StoryTableViewCell.swift
//  First App
//
//  Created by Diogo Amaral on 5/12/15.
//  Copyright (c) 2015 Diogo Amaral. All rights reserved.
//

import UIKit

class StoryTableViewCell: UITableViewCell {

    @IBOutlet weak var badgeImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var upvoteButton: SpringButton!
    @IBOutlet weak var commentsButton: SpringButton!
    
    @IBAction func upvoteButtonDidTouch(sender: AnyObject) {
        upvoteButton.animation = "pop"
        upvoteButton.force = 3
        upvoteButton.animate()
    }

    @IBAction func commentsButtonDidTouch(sender: AnyObject) {
        commentsButton.animation = "pop"
        commentsButton.force = 3
        commentsButton.animate()
    }
}
