//
//  TermsOfUse.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/23/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit

class TermsOfUse: UIViewController {
    
    @IBOutlet weak var termsScrollView: UIScrollView!
    @IBOutlet weak var termsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creates the Gradient Background
        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.yellow.cgColor, UIColor.orange.cgColor, UIColor.red.cgColor]
        newLayer.frame = view.frame
        view.layer.addSublayer(newLayer)
        view.layer.insertSublayer(newLayer, at: 0)
        
        // Creates the scrolling ability of the terms and conditions
        termsScrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: termsLabel.bottomAnchor).isActive = true
        
        navigationItem.title = "Terms of Use"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
