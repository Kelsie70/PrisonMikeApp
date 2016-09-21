//
//  ViewController.swift
//  CrystalBall
//
//  Created by Kelsie Belan on 2/23/16.
//  Copyright (c) 2016 Kelsie Belan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let predictionLabel = UILabel()
    let crystalBallImage = UIImageView()
    let predictionButton = UIButton()
    let predictionArray = ["The worst thing about prison was the... was the Dementors. They were flying all over the place and they were scary and then they'd come down and they'd suck the soul out of your body and it hurt!", "I stole and I robbed and I kidnapped the President's son and held him for ransom.", "And I never got caught, neither.", "Do you really expect me not to push you up against the wall, bioch?", "I'm Prison Mike! You know why they call me Prison Mike?!", "Close your eyes. Picture a convict. What's he wearing? Nothing special. Baseball cap on backwards. Baggy pants. He says something ordinary, like 'Yo, that's shizzle.' Okay, now slowly open your eyes again. Who were you picturing? A black man? Wrong. That was a white woman. Surprised? Well, shame on you.", "You, my friend, would be da belle of da ball. Don't drop da soap. Don't drop da soap.", "I didn't hire an ex-convict. Unless they mean Toby. Convicted rapist."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 222.0/255.0, green: 244.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        
        
        crystalBallImage.frame = CGRectMake(view.frame.width / 2 - 150, view.frame.height/2 - 150, 300, 300)
        crystalBallImage.contentMode = UIViewContentMode.ScaleAspectFit
        crystalBallImage.image = UIImage(named: "Michael_Scott_Prison.png")
        view.addSubview(crystalBallImage)
        
       
        predictionLabel.text = ""
        predictionLabel.frame = CGRectMake(0, 50, view.frame.width, 100)
        predictionLabel.textAlignment = NSTextAlignment.Center
        predictionLabel.numberOfLines = 0
        predictionLabel.adjustsFontSizeToFitWidth = true
        view.addSubview(predictionLabel)
        
       // view.sendSubviewToBack(crystalBallImage) use to manually send it to back instead of copy/paste
        
        
        predictionButton.frame = CGRectMake(view.frame.width/2 - 100, view.frame.height-100, 200, 100)
        predictionButton.setTitle("Ask Prison Mike", forState: UIControlState.Normal)
        predictionButton.backgroundColor = UIColor.blackColor()
        predictionButton.addTarget(self, action: "newPrediction", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(predictionButton)
        
    }

    func newPrediction(){
        predictionLabel.text = predictionArray[Int(arc4random_uniform(8))]
        
    }
    
}

