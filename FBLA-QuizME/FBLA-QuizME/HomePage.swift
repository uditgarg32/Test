//
//  HomePage.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/6/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import UIKit

class HomePage: UIViewController {

    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var FreePracticeLabel: UILabel!
    @IBOutlet weak var PracticeNowButton: UIButton!
    @IBOutlet weak var Footer: UINavigationBar!
    @IBOutlet weak var LogoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Creates the Gradient Background
        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.yellow.cgColor, UIColor.orange.cgColor, UIColor.red.cgColor]
        newLayer.frame = view.frame
        view.layer.addSublayer(newLayer)
        view.layer.insertSublayer(newLayer, at: 0)
        
        // Makes the PracticeNowButton Rounded
        self.PracticeNowButton.layer.cornerRadius = 20
        
        // Once the view loads, these three lines keep the labels and button hidden
        TitleLabel.alpha = 0
        FreePracticeLabel.alpha = 0
        PracticeNowButton.alpha = 0
        
        Footer.topItem?.title = ""
        
    }
    
   override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Animates the view when the app starts
        UIView.animate(withDuration: 0.5, animations: {
            self.TitleLabel.alpha = 1
        }) { (true) in
            UIView.animate(withDuration: 0.5, animations: {
                self.FreePracticeLabel.alpha = 1
            }, completion: { (true) in
                UIView.animate(withDuration: 0.5, animations: {
                    self.PracticeNowButton.alpha = 1
                    })
            })
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

