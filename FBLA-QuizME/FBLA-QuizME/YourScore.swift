//
//  YourScore.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/24/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit

class YourScore: UIViewController {
    
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var ShareButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creates the Gradient Background
        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.yellow.cgColor, UIColor.orange.cgColor, UIColor.red.cgColor]
        newLayer.frame = view.frame
        view.layer.addSublayer(newLayer)
        view.layer.insertSublayer(newLayer, at: 0)
        
        Score.text = String(format: "%i", ScoreNumber)
        ShareButton.layer.cornerRadius = 20
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Allows the user to share their score on a variety of social media platforms
    @IBAction func SharePressed(_ sender: Any) {
        let activityVC = UIActivityViewController(activityItems: ["I just scored \(ScoreNumber)/26 in FBLA-QuizME!"], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(activityVC, animated: true, completion: nil)
        
    }
}
