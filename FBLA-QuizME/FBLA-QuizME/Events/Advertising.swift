//
//  Advertising.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/24/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit


class Advertising: UIViewController {
    
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
                QuestionLabel.text = "Marketing helps individuals improve their"
                Answer1.setTitle("family relationship.", for: .normal)
                Answer2.setTitle("community relations.", for: .normal)
                Answer3.setTitle("standard of living.", for: .normal)
                Answer4.setTitle("budget management.", for: .normal)
                Answer3Correct = true
            case 1:
                QuestionLabel.text = "Marketing information is used by a specialty advertising business "
                Answer1.setTitle("to skim the market.", for: .normal)
                Answer2.setTitle("to interpret findings.", for: .normal)
                Answer3.setTitle("to identify new vendors..", for: .normal)
                Answer4.setTitle("to develop new products.", for: .normal)
                Answer4Correct = true
            case 2:
                QuestionLabel.text = "Advertising that directs messages to consumers' Internet-enabled devices such as smartphones is called"
                Answer1.setTitle("mobile advertising.", for: .normal)
                Answer2.setTitle("video advertising.", for: .normal)
                Answer3.setTitle("webisodes.", for: .normal)
                Answer4.setTitle("viral videos.", for: .normal)
                Answer1Correct = true
            case 3:
                QuestionLabel.text = "Before developing an advertising plan, the business should conduct a SWOT analysis. S stands for"
                Answer1.setTitle("situational analysis.", for: .normal)
                Answer2.setTitle("strengths.", for: .normal)
                Answer3.setTitle("sales.", for: .normal)
                Answer4.setTitle("synergy.", for: .normal)
                Answer2Correct = true
            case 4:
                QuestionLabel.text = "The _____ method is used when an advertising budget is intended to help the business reach specific goals."
                Answer1.setTitle("percentage of past sales.", for: .normal)
                Answer2.setTitle("competitive parity.", for: .normal)
                Answer3.setTitle("percentage of anticipated sales", for: .normal)
                Answer4.setTitle("objective and task", for: .normal)
                Answer4Correct = true
            case 5:
                QuestionLabel.text = "Which of the following is NOT an aspect of psychographic segmentation?"
                Answer1.setTitle("opinions", for: .normal)
                Answer2.setTitle("attitudes", for: .normal)
                Answer3.setTitle("age", for: .normal)
                Answer4.setTitle("lifestyle", for: .normal)
                Answer3Correct = true
            case 6:
                QuestionLabel.text = "In a channel of distribution, which of the following roles would a realtor play"
                Answer1.setTitle("producer", for: .normal)
                Answer2.setTitle("consumer", for: .normal)
                Answer3.setTitle("agent or broker", for: .normal)
                Answer4.setTitle("retailer", for: .normal)
                Answer3Correct = true
            case 7:
                QuestionLabel.text = "Which of the following purchases demonstrates the use of an indirect channel of distribution?"
                Answer1.setTitle("buying produce from farmers at a farmer's market", for: .normal)
                Answer2.setTitle("buying produce from a grocery store", for: .normal)
                Answer3.setTitle("calling L.L.Bean to buy a sweater", for: .normal)
                Answer4.setTitle("ordering jewelry online", for: .normal)
                Answer2Correct = true
            case 8:
                QuestionLabel.text = "'Our toothpaste fights cavities' is an example of a(n)"
                Answer1.setTitle("express claim.", for: .normal)
                Answer2.setTitle("subliminal message.", for: .normal)
                Answer3.setTitle("promise.", for: .normal)
                Answer4.setTitle("implied claim.", for: .normal)
                Answer1Correct = true
            case 9:
                QuestionLabel.text = "The FCC is least likely to handle which of the following consumer complaints? "
                Answer1.setTitle("a television commercial considered indecent", for: .normal)
                Answer2.setTitle("a mail fraud scam", for: .normal)
                Answer3.setTitle("an unsafe product advertised on the radio", for: .normal)
                Answer4.setTitle("unwanted text messages and e-mails", for: .normal)
                Answer3Correct = true
            case 10:
                QuestionLabel.text = "Cultural attitudes that highly value the needs of the group over the needs of the individual might likely be found in"
                Answer1.setTitle("France", for: .normal)
                Answer2.setTitle("the United States", for: .normal)
                Answer3.setTitle("South America", for: .normal)
                Answer4.setTitle("the United Kingdom", for: .normal)
                Answer3Correct = true
            case 11:
                QuestionLabel.text = "13) Advertisements that include individuals from multiple cultures use"
                Answer1.setTitle("ethnocentrism", for: .normal)
                Answer2.setTitle("visual diversity.", for: .normal)
                Answer3.setTitle("diversity manipulation.", for: .normal)
                Answer4.setTitle("discrimination.", for: .normal)
                Answer2Correct = true
            case 12:
                QuestionLabel.text = "Which of the following might NOT be a good fit in an advertising career?"
                Answer1.setTitle("a preference for working alone", for: .normal)
                Answer2.setTitle("a willingness to work hard for high compensation", for: .normal)
                Answer3.setTitle("a preference for a less structured environment", for: .normal)
                Answer4.setTitle("a love of movies and music", for: .normal)
                Answer1Correct = true
            default:
                break
            }
            // Removes the possibility of the question that was just shown to be shown again
            randomQuestionArray.remove(at: randomIndex)
        }
        
        // If the user is on the last question then show them that they have reached the last question
        if (randomQuestionArray.count < 1) {
            let alert = UIAlertController(title: "Wow!", message: "You have reached the last question for Advertising! Nice Job! Complete this question and then click on 'Your Score' for a rating!", preferredStyle: .alert)
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
