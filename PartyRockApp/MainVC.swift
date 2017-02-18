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
        
        let p1 = PartyRock(imageURL: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fheavyeditorial.files.wordpress.com%2F2016%2F03%2Fpas-2016_seal_0224_2_hires11.jpg%3Fquality%3D65%26strip%3Dall%26w%3D780&imgrefurl=http%3A%2F%2Fheavy.com%2Fentertainment%2F2016%2F03%2Fseal-the-passion-singer-face-scars-burns-what-from-instagram-pontius-pilate-are-why%2F&docid=EZ3jFXFtHdufPM&tbnid=RTp7vrZUzm5HvM%3A&vet=1&w=780&h=440&bih=1216&biw=1280&q=seal%20singer%20website&ved=0ahUKEwjHv47GqZnSAhVIrRQKHcGUAcEQMwgkKAswCw&iact=mrc&uact=8", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Et4BvxPYwmE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Killer")
        
        let p2 = PartyRock(imageURL: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.biography.com%2F.image%2Fc_fill%2Ccs_srgb%2Cdpr_1.0%2Cg_face%2Ch_300%2Cq_80%2Cw_300%2FMTE4MDAzNDEwOTQ3NTczMjYy%2Fthe-53rd-annual-grammy-awards---arrivals.jpg&imgrefurl=http%3A%2F%2Fwww.biography.com%2Fpeople%2Fseal-21212845&docid=YxtbnGl3mbbJRM&tbnid=96Q74jZ-SAuzMM%3A&vet=1&w=300&h=300&bih=1216&biw=1280&q=seal%20singer%20website&ved=0ahUKEwjHv47GqZnSAhVIrRQKHcGUAcEQMwgiKAkwCQ&iact=mrc&uact=8", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3tedYk88X9A\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Do You Ever")
        let p3 = PartyRock(imageURL: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fs-media-cache-ak0.pinimg.com%2F236x%2Fb5%2Fe8%2Fc6%2Fb5e8c6834a4e6053d8d64f66e1833e60.jpg&imgrefurl=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F436778863835028281%2F&docid=kE5HRUqeEByMiM&tbnid=fADeewVYHNO68M%3A&vet=1&w=236&h=241&bih=1216&biw=1280&q=seal%20singer%20website&ved=0ahUKEwjHv47GqZnSAhVIrRQKHcGUAcEQMwg6KBcwFw&iact=mrc&uact=8", videoURL: "", videoTitle: "")
        let p4 = PartyRock(imageURL: "https://www.google.com/imgres?imgurl=http%3A%2F%2Fdelafont.com%2Fmusic_acts%2FMusic_Images%2Fseal.jpg&imgrefurl=http%3A%2F%2Fdelafont.com%2Fmusic_acts%2Fseal.htm&docid=mfiFqSEiG-8nnM&tbnid=UjsE_JwfEDfb7M%3A&vet=1&w=179&h=224&bih=1216&biw=1280&q=seal%20singer%20website&ved=0ahUKEwjHv47GqZnSAhVIrRQKHcGUAcEQMwgZKAAwAA&iact=mrc&uact=8", videoURL: "", videoTitle: "")
        let p5 = PartyRock(imageURL: "https://www.google.com/imgres?imgurl=http%3A%2F%2Fwww.hellomagazine.com%2Fimagenes%2Fprofiles%2F%2Fseal%2F1416-seal-prof1b.jpg&imgrefurl=http%3A%2F%2Fwww.hellomagazine.com%2Fprofiles%2Fseal%2F&docid=UqbYsiYoP5ySoM&tbnid=rDmjMjT4cLdKRM%3A&vet=1&w=180&h=240&bih=1216&biw=1280&q=seal%20singer%20website&ved=0ahUKEwjHv47GqZnSAhVIrRQKHcGUAcEQMwhRKC4wLg&iact=mrc&uact=8", videoURL: "", videoTitle: "")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        
        
        
        let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Et4BvxPYwmE\" frameborder=\"0\" allowfullscreen></iframe>"
        
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
        
        
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
}

