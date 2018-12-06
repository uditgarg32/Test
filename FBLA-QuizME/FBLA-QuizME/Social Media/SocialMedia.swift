//
//  SocialMedia.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/25/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit

class SocialMedia: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creates the Gradient Background
        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.yellow.cgColor, UIColor.orange.cgColor, UIColor.red.cgColor]
        newLayer.frame = view.frame
        view.layer.addSublayer(newLayer)
        view.layer.insertSublayer(newLayer, at: 0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
