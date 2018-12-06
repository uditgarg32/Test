//
//  CyberSecurity.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/25/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit
import MessageUI


class CyberSecurity: UIViewController {
    
    // Set up variables that represent labels and buttons on the storyboard
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var Answer1: UIButton!
    @IBOutlet weak var Answer2: UIButton!
    @IBOutlet weak var Answer3: UIButton!
    @IBOutlet weak var Answer4: UIButton!
    @IBOutlet weak var NextQuestion: UIButton!
    @IBOutlet weak var ScoreLabel: UILabel!
    
    // Create an array of integers that represent the number of questions
    var randomQuestionArray:[Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hide Initial Next Question Buttons
        NextQuestion.isHidden = true
        
        //Format the buttons
        Answer1.layer.borderWidth=1
        Answer1.layer.borderColor=UIColor.darkGray.cgColor
        Answer1.layer.cornerRadius=5
        Answer2.layer.borderWidth=1
        Answer2.layer.borderColor=UIColor.darkGray.cgColor
        Answer2.layer.cornerRadius=5
        Answer3.layer.borderWidth=1
        Answer3.layer.borderColor=UIColor.darkGray.cgColor
        Answer3.layer.cornerRadius=5
        Answer4.layer.borderWidth=1
        Answer4.layer.borderColor=UIColor.darkGray.cgColor
        Answer4.layer.cornerRadius=5
        
        // Set the answers to be incorrect
        Answer1Correct = false
        Answer2Correct = false
        Answer3Correct = false
        Answer4Correct = false
        
        // As soon as the view loads start generating the questions
        RandomQuestions()
        
        ScoreNumber = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // If the answer is right then the Next Question button is enabled
    func rightAnswer() {
        NextQuestion.isHidden = false
        ScoreNumber = Int(ScoreNumber) + 2
        ScoreLabel.text = String(format: "%i", ScoreNumber)
    }
    
    // If the answer is wrong then the Next Question button is hidden
    func wrongAnswer() {
        ScoreNumber = Int(ScoreNumber) - 1
        ScoreLabel.text = String(format: "%i", ScoreNumber)
    }
    
    // This function randomly generates questions without repeat
    func RandomQuestions(){
        
        Answer1.isEnabled = true
        Answer2.isEnabled = true
        Answer3.isEnabled = true
        Answer4.isEnabled = true
        
        
        // This makes randomIndex represent the number of questions available for this question
        let randomIndex = Int(arc4random_uniform(UInt32(randomQuestionArray.count)))
        
        // Generates questions until all of the questions for this topic have been answered
        if randomQuestionArray.count > -1 {
            
            switch (randomQuestionArray[randomIndex]) {
            case 0:
                QuestionLabel.text = "This is a class of programs that searches your hard drive and floppy disks for any known or potential viruses."
                Answer1.setTitle("intrusion detection", for: .normal)
                Answer2.setTitle("security identifier", for: .normal)
                Answer3.setTitle("Antigen", for: .normal)
                Answer4.setTitle("Antivirus Software", for: .normal)
                Answer4Correct = true
            case 1:
                QuestionLabel.text = "What is the term for an attempt to determine the valid e-mail addresses associated with an e-mail server so that they can be added to a spam database?"
                Answer1.setTitle("X-mail harvest", for: .normal)
                Answer2.setTitle("Directory harvest attack", for: .normal)
                Answer3.setTitle("Spambot attack", for: .normal)
                Answer4.setTitle("Email validator", for: .normal)
                Answer2Correct = true
            case 2:
                QuestionLabel.text = "What protocol ensures privacy between communicating applications and their users on the Internet?"
                Answer1.setTitle("F-Secure", for: .normal)
                Answer2.setTitle("Privacy Control Protocol", for: .normal)
                Answer3.setTitle("Secure Shell Authentication", for: .normal)
                Answer4.setTitle("Transport Layer Security", for: .normal)
                Answer4Correct = true
            case 3:
                QuestionLabel.text = "What governs the type of traffic that is and is not allowed through a firewall?"
                Answer1.setTitle("rule base", for: .normal)
                Answer2.setTitle("gateway", for: .normal)
                Answer3.setTitle("access control list", for: .normal)
                Answer4.setTitle("partition", for: .normal)
                Answer1Correct = true
            case 4:
                QuestionLabel.text = "What protocol ensures privacy between communicating applications and their users on the Internet?"
                Answer1.setTitle("F-Secure", for: .normal)
                Answer2.setTitle("Privacy Control Protocol", for: .normal)
                Answer3.setTitle("Secure Shell Authentication", for: .normal)
                Answer4.setTitle("Transport Layer Security", for: .normal)
                Answer4Correct = true
            case 5:
                QuestionLabel.text = "Microsoft's Passport is an example of this technology, which allows users to register their personal information once to access multiple applications."
                Answer1.setTitle("Microsoft Point-to-Point Encryption.", for: .normal)
                Answer2.setTitle("Single Signon.", for: .normal)
                Answer3.setTitle("Relative Identifier.", for: .normal)
                Answer4.setTitle("Biometric Verification", for: .normal)
                Answer2Correct = true
            case 6:
                QuestionLabel.text = "Your friend sends you a website link requesting you to update your address information. What will you do?"
                Answer1.setTitle("Click on the link and update the information.", for: .normal)
                Answer2.setTitle("Make your decision based on the privacy policy", for: .normal)
                Answer3.setTitle("Update and forward the link to all your friends.", for: .normal)
                Answer4.setTitle("Report your friends email address as spam.", for: .normal)
                Answer2Correct = true
            case 7:
                QuestionLabel.text = "What is SSL used for?"
                Answer1.setTitle("Encrypt data as it travels over a network", for: .normal)
                Answer2.setTitle("Encrypt passwords for storage in a database", for: .normal)
                Answer3.setTitle("Encrypt files located on a Web server", for: .normal)
                Answer4.setTitle("Encrypt digital certificates", for: .normal)
                Answer1Correct = true
            case 8:
                QuestionLabel.text = "On average, how long does it take for an unprotected networked computer to be compromised once it is connected to the internet?"
                Answer1.setTitle("1 Week", for: .normal)
                Answer2.setTitle("20 minutes", for: .normal)
                Answer3.setTitle("10 hours", for: .normal)
                Answer4.setTitle("7 Days", for: .normal)
                Answer1Correct = true
            case 9:
                QuestionLabel.text = "This is a document that states in writing how a company plans to protect the company's physical and IT assets."
                Answer1.setTitle("Data Encryption Standard", for: .normal)
                Answer2.setTitle("Security policy", for: .normal)
                Answer3.setTitle("Public key certificate", for: .normal)
                Answer4.setTitle("Access control list", for: .normal)
                Answer2Correct = true
            case 10:
                QuestionLabel.text = "This is a program in which malicious or harmful code is contained inside apparentlyharmless programming or data."
                Answer1.setTitle("War dialer", for: .normal)
                Answer2.setTitle("Spam trap", for: .normal)
                Answer3.setTitle("Trojan horse", for: .normal)
                Answer4.setTitle("Email", for: .normal)
                Answer3Correct = true
            case 11:
                QuestionLabel.text = "Which of the following is the most important to install and keep up to date on your personal computer?"
                Answer1.setTitle("Anti-virus and anti-spyware software", for: .normal)
                Answer2.setTitle("Anti-spam software", for: .normal)
                Answer3.setTitle("A Firewall", for: .normal)
                Answer4.setTitle("All of the above", for: .normal)
                Answer4Correct = true
            case 12:
                QuestionLabel.text = "What percentage of people have reported that someone has stolen personally-identifiable information?"
                Answer1.setTitle("5%", for: .normal)
                Answer2.setTitle("10%", for: .normal)
                Answer3.setTitle("15%", for: .normal)
                Answer4.setTitle("20%", for: .normal)
                Answer1Correct = true
            default:
                break
            }
            // Removes the possibility of the question that was just shown to be shown again
            randomQuestionArray.remove(at: randomIndex)
        }
        
        // If the user is on the last question then show them that they have reached the last question
        if (randomQuestionArray.count < 1) {
            let alert = UIAlertController(title: "Wow!", message: "You have reached the last question for Cyber Security! Nice Job! Complete this question and then click on 'Your Score' for a rating!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Continue", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                case .cancel:
                    print("cancel")
                case .destructive:
                    print("destructive")
                }}))
            self.present(alert, animated: true, completion: nil)
            NextQuestion.isEnabled = false
        }
        
        if (randomQuestionArray.count == 0) {
            let alert = UIAlertController(title: "Wow!", message: "You got \(ScoreNumber) out of 13 questions correct nice job! To see a detailed breakdown of your score, click-Your Score-next to your score number.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Continue", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                case .cancel:
                    print("cancel")
                case .destructive:
                    print("destructive")
                }}))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    // These 4 functions tell the user if they got the correct answer or if they got the incorrect answer
    @IBAction func Answer1(_ sender: Any) {
        if Bool(Answer1Correct) == true {
            rightAnswer()
            Answer1.layer.backgroundColor = UIColor.green.cgColor
            Answer1.isEnabled = false
            Answer2.isEnabled = false
            Answer3.isEnabled = false
            Answer4.isEnabled = false
        } else {
            wrongAnswer()
            Answer1.layer.backgroundColor = UIColor.red.cgColor
            Answer1.isEnabled = false
        }
    }
    
    @IBAction func Answer2(_ sender: Any) {
        if Bool(Answer2Correct) == true {
            rightAnswer()
            Answer2.layer.backgroundColor = UIColor.green.cgColor
            Answer2.isEnabled = false
            Answer1.isEnabled = false
            Answer3.isEnabled = false
            Answer4.isEnabled = false
        } else {
            wrongAnswer()
            Answer2.layer.backgroundColor = UIColor.red.cgColor
            Answer2.isEnabled = false
        }
    }
    
    @IBAction func Answer3(_ sender: Any) {
        if Bool(Answer3Correct) == true {
            rightAnswer()
            Answer3.layer.backgroundColor = UIColor.green.cgColor
            Answer3.isEnabled = false
            Answer1.isEnabled = false
            Answer2.isEnabled = false
            Answer4.isEnabled = false
        } else {
            wrongAnswer()
            Answer3.layer.backgroundColor = UIColor.red.cgColor
            Answer3.isEnabled = false
        }
    }
    
    @IBAction func Answer4(_ sender: Any) {
        if Bool(Answer4Correct) == true {
            rightAnswer()
            Answer4.layer.backgroundColor = UIColor.green.cgColor
            Answer4.isEnabled = false
            Answer1.isEnabled = false
            Answer2.isEnabled = false
            Answer3.isEnabled = false
        } else {
            wrongAnswer()
            Answer4.layer.backgroundColor = UIColor.red.cgColor
            Answer4.isEnabled = false
        }
    }
    
    // Resets the colors and answers and generates another question
    @IBAction func NextQuestion(_ sender: Any) {
        Answer1.layer.backgroundColor = UIColor.white.cgColor
        Answer2.layer.backgroundColor = UIColor.white.cgColor
        Answer3.layer.backgroundColor = UIColor.white.cgColor
        Answer4.layer.backgroundColor = UIColor.white.cgColor
        NextQuestion.isHidden = true
        Answer1Correct = false
        Answer2Correct = false
        Answer3Correct = false
        Answer4Correct = false
        RandomQuestions()
    }
}

