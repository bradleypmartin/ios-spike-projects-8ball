//
//  ViewController.swift
//  ios-spike-projects-8ball
//
//  Created by Brad Martin on 2/3/19.
//  Copyright © 2019 Brad Martin. All rights reserved.
//
//  Thanks to Angela Yu and the London App Brewery for the
//  assets used in this toy/learning project.

import UIKit

class ViewController: UIViewController {
    
    // setting up random roll of 8-ball results
    var ballIndex : Int = 0;
    let ballImageArray = ["ball1",
                          "ball2",
                          "ball3",
                          "ball4",
                          "ball5"]
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    // ball changed on button press
    @IBAction func askButton(_ sender: UIButton) {
        updateBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBall()
    }

    // changes the 8-ball image
    func updateBall() {
        ballIndex = Int.random(in: 0...4)
        ballImageView.image = UIImage(named: ballImageArray[ballIndex])
    }
    
}

