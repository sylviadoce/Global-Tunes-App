//
//  MapViewController.swift
//  Global Tunes App
//
//  Created by Sylvia Chin on 7/25/18.
//  Copyright © 2018 Sylvia Chin. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var pickedGenre: UILabel!
    var songsAvailable : [String] = []
    var genreChosen: String = ""
    var bioChosen: String = ""
    var donationLink : String = ""
    var buttonName : String = ""
  //  var songsAvailable: String = ""
    
    
   
    @IBAction func latinChosen2(_ sender: Any) {
        genreChosen = "Latin Music"
        buttonName = "latinChosen2"
        bioChosen  = SongViewController().latinBio
        songsAvailable = SongViewController().latinSongs
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
        
    }
    
    @IBAction func latinChosen(_ sender: Any) {
        genreChosen = "Latin Music"
       buttonName = "latinChosen"
        bioChosen  = SongViewController().latinBio
        songsAvailable = SongViewController().latinSongs
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
        
    }
    
    @IBAction func englishChosen3(_ sender: Any) {
        genreChosen = "English Music"
        bioChosen  = SongViewController().englishBio
        songsAvailable = SongViewController().englishSongs
        buttonName = "englishChosen3"
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
    }
    @IBAction func englishChosen2(_ sender: Any) {
        genreChosen = "English Music"
 bioChosen  = SongViewController().englishBio
        songsAvailable = SongViewController().englishSongs
        buttonName = "englishChosen2"
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
    }
    
    @IBAction func englishChosen(_ sender: Any) {
        genreChosen = "English Music"
     bioChosen  = SongViewController().englishBio
        songsAvailable = SongViewController().englishSongs
        buttonName = "englishChosen"
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
    }
    
    @IBAction func eastAsianChosen(_ sender: Any) {
        genreChosen = "East Asian Music"
        bioChosen  = SongViewController().eastAsianBio
        songsAvailable = SongViewController().eastAsianSongs
        buttonName = "eastAsianChosen"
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
    }

    @IBAction func frenchChosen3(_ sender: Any) {
        genreChosen = "French Music"
   bioChosen  = SongViewController().frenchBio
        songsAvailable = SongViewController().frenchSongs
        buttonName = "frenchChosen3"
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
    }
    
    @IBAction func frenchChosen2(_ sender: Any) {
        genreChosen = "French Music"
bioChosen  = SongViewController().frenchBio
        songsAvailable = SongViewController().frenchSongs
        buttonName = "frenchChosen2"
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
    }
    
    @IBAction func frenchChosen(_ sender: Any) {
        genreChosen = "French Music"
bioChosen  = SongViewController().frenchBio
        songsAvailable = SongViewController().frenchSongs
        buttonName = "frenchChosen"
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
    }
   
    @IBAction func indianChosen(_ sender: Any) {
        genreChosen = "Indian Music"
        buttonName = "indianChosen"
        songsAvailable = SongViewController().indianSongs
        bioChosen  = SongViewController().indianBio
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
    }

    @IBAction func russianChosen(_ sender: Any) {
        genreChosen = "Russian Music"
   bioChosen  = SongViewController().russianBio
        songsAvailable = SongViewController().russianSongs
        buttonName = "russianChosen"
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
    }
 
    @IBAction func africanChosen(_ sender: Any) {
        genreChosen = "African Music"
        songsAvailable = SongViewController().africanSongs
        bioChosen = SongViewController().africanBio
        buttonName = "africanChosen"
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
    }
 
    @IBAction func middleEasternChosen(_ sender: Any) {
        songsAvailable = SongViewController().middleEasternSongs
        genreChosen = "Songs From the Middle East"
        bioChosen  = SongViewController().middleEasternBio
        //buttonName = "middleEasternChosen"
        performSegue(withIdentifier: "MapToInfo", sender: Any?.self)
      
 }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "MapToInfo") {
        let vc = segue.destination as! SongViewController
        vc.genreChose = genreChosen
        vc.bio = bioChosen
        vc.songs = songsAvailable
        }
        
        /*    if (segue.identifier == "MapToInfo" && buttonName == "latinChosen") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         vc.songs.append()
         }else if (segue.identifier == "MapToInfo" && buttonName == "latinChosen2") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         }else if (segue.identifier == "MapToInfo" && buttonName == "englishChosen3") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         }else if (segue.identifier == "MapToInfo" && buttonName == "englishChosen2") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         }else if (segue.identifier == "MapToInfo" && buttonName == "englishChosen") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         }else if (segue.identifier == "MapToInfo" && buttonName == "eastAsianChosen") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         }else if (segue.identifier == "MapToInfo" && buttonName == "frenchChosen3") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         }else if (segue.identifier == "MapToInfo" && buttonName == "frenchChosen2") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         }else if (segue.identifier == "MapToInfo" && buttonName == "frenchChosen") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         }else if (segue.identifier == "MapToInfo" && buttonName == "indianChosen") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         }else if (segue.identifier == "MapToInfo" && buttonName == "russianChosen") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         }else if (segue.identifier == "MapToInfo" && buttonName == "africanChosen") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         }else if (segue.identifier == "MapToInfo" && buttonName == "middleEasternChosen") {
         let vc = segue.destination as! SongViewController
         vc.genreChose = genreChosen
         vc.donationLink = donationLink
         }*/
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //pickedGenre.text = "Genre picked:  " + genreChosen
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
