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
        
        // going to download from the internet - ALWAYS USE ASYNCHRONOUS THREADS FOR DOWNLOADS
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch  {
                // handle the error
            }
        }
    }

}
