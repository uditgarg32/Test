//
//  ReportProblem.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/24/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

class ReportProblem: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var ReportButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ReportButton.layer.cornerRadius = 5
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Sends the email regarding the bug found
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let composeVC = MFMailComposeViewController()
            composeVC.mailComposeDelegate = self
            // Configure the fields of the interface.
            composeVC.setToRecipients(["fblaquizme@gmail.com"])
            composeVC.setSubject("We found a Problem!")
            composeVC.setMessageBody("Please let us know what you found wrong", isHTML: true)
            // Present the view controller modally.
            present(composeVC, animated: true)
        } else {
            // show failure alert
        }
    }
    
    // Once the user sends the email, the view will go away
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
    // Presents the mail composer
    @IBAction func ReportProblem(_ sender: Any) {
        sendEmail()
    }
}
