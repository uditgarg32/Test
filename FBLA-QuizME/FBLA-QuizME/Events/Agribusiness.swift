//
//  Agribusiness.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/24/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit


class Agribusiness: UIViewController {
    
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
                QuestionLabel.text = "The best strategy for handling a “know-it-all” customer is:"
                Answer1.setTitle("telling him/her you know it all", for: .normal)
                Answer2.setTitle("telling him/her that you don’t agree with him/her", for: .normal)
                Answer3.setTitle("not being argumentative with the customer", for: .normal)
                Answer4.setTitle("asking the customer to leave", for: .normal)
                Answer3Correct = true
            case 1:
                QuestionLabel.text = "document that describes the type of competition a business will face and the types of customers the business hopes to attract"
                Answer1.setTitle("management plan", for: .normal)
                Answer2.setTitle("financial plan", for: .normal)
                Answer3.setTitle("operating plan", for: .normal)
                Answer4.setTitle("legal plan", for: .normal)
                Answer1Correct = true
            case 2:
                QuestionLabel.text = "Which of the following is considered an agribusiness product?"
                Answer1.setTitle("Corn grown for the USA market", for: .normal)
                Answer2.setTitle("Soybeans to be exported", for: .normal)
                Answer3.setTitle("Cotton", for: .normal)
                Answer4.setTitle("All of the above", for: .normal)
                Answer4Correct = true
            case 3:
                QuestionLabel.text = "The demand for most farm commodities is:"
                Answer1.setTitle("growing more rapidly than supply", for: .normal)
                Answer2.setTitle("inelastic", for: .normal)
                Answer3.setTitle("decreasing over time", for: .normal)
                Answer4.setTitle("a relatively flat downwards sloping line", for: .normal)
                Answer2Correct = true
            case 4:
                QuestionLabel.text = "Seed and chemicals are considered as which type of agribusiness industries?"
                Answer1.setTitle("Support.", for: .normal)
                Answer2.setTitle("Output", for: .normal)
                Answer3.setTitle("Production", for: .normal)
                Answer4.setTitle("Input", for: .normal)
                Answer4Correct = true
            case 5:
                QuestionLabel.text = "The process of determining the best way to approach a particular goal is called"
                Answer1.setTitle("Planning", for: .normal)
                Answer2.setTitle("Organizing", for: .normal)
                Answer3.setTitle("Leading", for: .normal)
                Answer4.setTitle("Controlling", for: .normal)
                Answer1Correct = true
            case 6:
                QuestionLabel.text = "Solvency of a business can be determined by evaluating the:"
                Answer1.setTitle("cash flow statement", for: .normal)
                Answer2.setTitle("debt to equity ratio", for: .normal)
                Answer3.setTitle("price to earning ratio", for: .normal)
                Answer4.setTitle("net income", for: .normal)
                Answer2Correct = true
            case 7:
                QuestionLabel.text = "Vertical integration is most common in which of the following agricultural enterprises?"
                Answer1.setTitle("horses", for: .normal)
                Answer2.setTitle("beef", for: .normal)
                Answer3.setTitle("grain", for: .normal)
                Answer4.setTitle("poultry", for: .normal)
                Answer4Correct = true
            case 8:
                QuestionLabel.text = "Cattle futures are publicly traded on the:"
                Answer1.setTitle("New York Stock Exchange", for: .normal)
                Answer2.setTitle("NASDAQ", for: .normal)
                Answer3.setTitle("Chicago Board of Trade", for: .normal)
                Answer4.setTitle("none of the above", for: .normal)
                Answer3Correct = true
            case 9:
                QuestionLabel.text = "The demand for pork is determined by: "
                Answer1.setTitle("The price of pork", for: .normal)
                Answer2.setTitle("Income of the purchaser", for: .normal)
                Answer3.setTitle("The prices of substitute products", for: .normal)
                Answer4.setTitle("all of the above.", for: .normal)
                Answer4Correct = true
            case 10:
                QuestionLabel.text = "A dairy cow held for breeding and production purposes is known as a:"
                Answer1.setTitle("short-term asset", for: .normal)
                Answer2.setTitle("intermediate asset", for: .normal)
                Answer3.setTitle("capital asset", for: .normal)
                Answer4.setTitle("long-term liability", for: .normal)
                Answer4Correct = true
            case 11:
                QuestionLabel.text = "Which of the following business types allows the most liability protection for the owners?"
                Answer1.setTitle("partnership", for: .normal)
                Answer2.setTitle("sole proprietorship", for: .normal)
                Answer3.setTitle("corporation", for: .normal)
                Answer4.setTitle("none of the above", for: .normal)
                Answer3Correct = true
            case 12:
                QuestionLabel.text = "Which of the following is the equation for determining net worth?"
                Answer1.setTitle("Net Worth = Assets - Liabilities", for: .normal)
                Answer2.setTitle("Net Worth = Assets + Liabilities", for: .normal)
                Answer3.setTitle("Net Worth = Assets / Liabilities", for: .normal)
                Answer4.setTitle("Net Worth = Liabilities - Assets", for: .normal)
                Answer4Correct = true
            default:
                break
            }
            // Removes the possibility of the question that was just shown to be shown again
            randomQuestionArray.remove(at: randomIndex)
        }
        
        // If the user is on the last question then show them that they have reached the last question
        if (randomQuestionArray.count < 1) {
            let alert = UIAlertController(title: "Wow!", message: "You have reached the last question for Agribusiness! Nice Job! Complete this question and then click on 'Your Score' for a rating!", preferredStyle: .alert)
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

