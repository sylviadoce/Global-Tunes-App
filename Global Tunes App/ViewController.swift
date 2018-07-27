//
//  ViewController.swift
//  Global Tunes App
//
//  Created by Sylvia Chin on 7/23/18.
//  Copyright © 2018 Sylvia Chin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var theGif: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imagesNames = ["world-flag-note-t-1.png", "world-flag-note-t-2.png", "world-flag-note-t-3.png", "world-flag-note-t-4.png", "world-flag-note-t-5.png", "world-flag-note-t-6.png", "world-flag-note-t-7.png", "world-flag-note-t-8.png", "world-flag-note-t-9.png", "world-flag-note-t-10.png", "world-flag-note-t-11.png", "world-flag-note-t-12.png", "world-flag-note-t-13.png", "world-flag-note-t-14.png", "world-flag-note-t-15.png", "world-flag-note-t-16.png", "world-flag-note-t-17.png", "world-flag-note-t-18.png", "world-flag-note-t-19.png", "world-flag-note-t-20.png", "world-flag-note-t-21.png", "world-flag-note-t-22.png", "world-flag-note-t-23.png", "world-flag-note-t-24.png", "world-flag-note-t-25.png", "world-flag-note-t-26.png", "world-flag-note-t-27.png", "world-flag-note-t-28.png", "world-flag-note-t-29.png", "world-flag-note-t-30.png", "world-flag-note-t-31.png", "world-flag-note-t-32.png", "world-flag-note-t-33.png", "world-flag-note-t-34.png", "world-flag-note-t-35.png", "world-flag-note-t-36.png", "world-flag-note-t-37.png", "world-flag-note-t-38.png", "world-flag-note-t-39.png", "world-flag-note-t-40.png", "world-flag-note-t-41.png", "world-flag-note-t-42.png", "world-flag-note-t-43.png", "world-flag-note-t-44.png", "world-flag-note-t-45.png"]
        
        var images = [UIImage] ()
        
        for i in 0..<imagesNames.count {
            
            images.append(UIImage(named: imagesNames[i])!)
        }
        
        theGif.animationImages = images
        theGif.animationDuration = 5.0
        theGif.startAnimating()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

