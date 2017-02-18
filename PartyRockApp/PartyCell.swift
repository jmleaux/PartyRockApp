//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by J. M. Lowe on 2/18/17.
//  Copyright © 2017 JMLeaux LLC. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        //TODO: set image from URL
    }

}
