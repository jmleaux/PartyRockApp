//
//  ViewController.swift
//  PartyRockApp
//
//  Created by J. M. Lowe on 2/18/17.
//  Copyright © 2017 JMLeaux LLC. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://heavyeditorial.files.wordpress.com/2016/03/pas-2016_seal_0224_2_hires11.jpg?quality=65&strip=all&w=780", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Et4BvxPYwmE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Killer")
        
        let p2 = PartyRock(imageURL: "http://www.totalisimo.com/artistas/img/seal1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3tedYk88X9A\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Do You Ever")
        let p3 = PartyRock(imageURL: "https://s-media-cache-ak0.pinimg.com/736x/7a/5d/9c/7a5d9ce2bcd6db878496aa780a9d96f5.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fCdngWzWPYI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Every Time I'm With You")
        let p4 = PartyRock(imageURL: "http://imados.fr/content/9/3/7/419379/seal_s200.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AMD2TwRvuoU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Kiss From A Rose")
        let p5 = PartyRock(imageURL: "http://www.telegraph.co.uk/content/dam/music/2015-11/nov2/sealadamski-large.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/koldSUtWTf8?list=PLfYUcenVtXMaWIFqLrVfhGXWJO197nqjc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "I Can't Stand the Rain")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        
//        let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Et4BvxPYwmE\" frameborder=\"0\" allowfullscreen></iframe>"
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }
        
        
//        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
}

