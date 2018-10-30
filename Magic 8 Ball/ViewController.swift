//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Giulia Boscaro on 20/10/18.
//  Copyright © 2018 Giulia Boscaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballImages = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomIndexOfBall: Int = 0

    @IBOutlet weak var ballImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
    }
    
    func updateBallImage() {
        randomIndexOfBall = Int.random(in: 0...4)
        ballImageView.image = UIImage(named: ballImages[randomIndexOfBall])
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    

}

