//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Haamed Sultani on 2018-08-07.
//  Copyright © 2018 Sultani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    // MARK: - IBOutlets
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var ballImageView: UIImageView!
    
    
    
    // MARK: - View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        askQuestion()
    }


    
    // MARK: - IB Actions
    @IBAction func askButtonClicked(_ sender: Any) {
        askQuestion()
    }
    
    // Change ball image when phone is shaken
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        askQuestion()
    }
    
    
    // MARK: - My Methods
    // Change ball image
    func askQuestion() {
        let randomBallImage = Int(arc4random_uniform(5))
        
        ballImageView.image = UIImage(named: ballArray[randomBallImage])
    }
    
}
