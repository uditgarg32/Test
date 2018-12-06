//
//  Accounting2.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/24/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit


class Accounting2: UIViewController {
    
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
                QuestionLabel.text = "Some examples of plant assets are"
                Answer1.setTitle("cash, supplies, and furniture.", for: .normal)
                Answer2.setTitle("computers, cash registers, and display cases.", for: .normal)
                Answer3.setTitle("none of the answersare correct", for: .normal)
                Answer4.setTitle("prepaid insurance, computers, and supplies.", for: .normal)
                Answer2Correct = true
            case 1:
                QuestionLabel.text = "If a plant asset costs $700, has accumulated depreciation of $550, and is sold for $100, the gain or loss on disposal is "
                Answer1.setTitle("$50.00 loss.", for: .normal)
                Answer2.setTitle("$150.00 loss.", for: .normal)
                Answer3.setTitle("$450.00 gain.", for: .normal)
                Answer4.setTitle("$100.00 gain.", for: .normal)
                Answer1Correct = true
            case 2:
                QuestionLabel.text = "When using the account form to prepare a balance sheet, assets are "
                Answer1.setTitle("listed on the left side of the balance sheet.", for: .normal)
                Answer2.setTitle("not listed on the balance sheet.", for: .normal)
                Answer3.setTitle("listed on both sides of the balance sheet.", for: .normal)
                Answer4.setTitle("listed on the right side of the balance sheet.", for: .normal)
                Answer1Correct = true
            case 3:
                QuestionLabel.text = "A special journal used to record only sales on account is "
                Answer1.setTitle("none of the answers are correct", for: .normal)
                Answer2.setTitle("a cash receipts journal.", for: .normal)
                Answer3.setTitle("a cash journal.", for: .normal)
                Answer4.setTitle("a purchases journal.", for: .normal)
                Answer1Correct = true
            case 4:
                QuestionLabel.text = "If merchandise is purchased for $1,000.00 on August 1, with terms of sale of 2/10, n/30, the amount due to the vendor on August 9 is "
                Answer1.setTitle("$990.", for: .normal)
                Answer2.setTitle("$1,000.", for: .normal)
                Answer3.setTitle("$980", for: .normal)
                Answer4.setTitle("$20", for: .normal)
                Answer3Correct = true
            case 5:
                QuestionLabel.text = "Ultimately purchases returns and allowances "
                Answer1.setTitle("increase the amount of purchases.", for: .normal)
                Answer2.setTitle("affect the cash flow.", for: .normal)
                Answer3.setTitle("do not affect the amount of purchases.", for: .normal)
                Answer4.setTitle("decrease the amount of purchases.", for: .normal)
                Answer4Correct = true
            case 6:
                QuestionLabel.text = "For a sale on account of $1,000 with sales tax of $80, the amount recorded in the Accounts Receivable amount column of a sales journal is"
                Answer1.setTitle("$1,080", for: .normal)
                Answer2.setTitle("$920", for: .normal)
                Answer3.setTitle("$80", for: .normal)
                Answer4.setTitle("$1,000", for: .normal)
                Answer1Correct = true
            case 7:
                QuestionLabel.text = "The distribution of net income statement shows each partner's "
                Answer1.setTitle("total capital", for: .normal)
                Answer2.setTitle("share of net income or net loss.", for: .normal)
                Answer3.setTitle("none of the answers are correct", for: .normal)
                Answer4.setTitle("share of withdrawals.", for: .normal)
                Answer2Correct = true
            case 8:
                QuestionLabel.text = "Action by a board of directors to distribute corporate earnings is "
                Answer1.setTitle("declaring a dividend.", for: .normal)
                Answer2.setTitle("paying a dividend.", for: .normal)
                Answer3.setTitle("net income.", for: .normal)
                Answer4.setTitle("receiving payment on account.", for: .normal)
                Answer1Correct = true
            case 9:
                QuestionLabel.text = "Each employer must file a federal tax return showing the federal income tax and social security and Medicare taxes due to the government on Form "
                Answer1.setTitle("941", for: .normal)
                Answer2.setTitle("W-2", for: .normal)
                Answer3.setTitle("940", for: .normal)
                Answer4.setTitle("W-3.", for: .normal)
                Answer1Correct = true
            case 10:
                QuestionLabel.text = "The person to whom the amount of a note is payable is "
                Answer1.setTitle("the customer.", for: .normal)
                Answer2.setTitle("none of the answers are correct", for: .normal)
                Answer3.setTitle("the account receivable.", for: .normal)
                Answer4.setTitle("the payee of the note.", for: .normal)
                Answer4Correct = true
            case 11:
                QuestionLabel.text = "A business form used to record payroll information is called a ____."
                Answer1.setTitle("check stub", for: .normal)
                Answer2.setTitle("employee earnings record", for: .normal)
                Answer3.setTitle("payroll register", for: .normal)
                Answer4.setTitle("memorandum", for: .normal)
                Answer3Correct = true
            case 12:
                QuestionLabel.text = "Which of the following is NOT a way that a business disposes of a plant asset?"
                Answer1.setTitle("trading", for: .normal)
                Answer2.setTitle("selling", for: .normal)
                Answer3.setTitle("dicarding", for: .normal)
                Answer4.setTitle("devaluing", for: .normal)
                Answer4Correct = true
            default:
                break
            }
            // Removes the possibility of the question that was just shown to be shown again
            randomQuestionArray.remove(at: randomIndex)
        }
        
        // If the user is on the last question then show them that they have reached the last question
        if (randomQuestionArray.count < 1) {
            let alert = UIAlertController(title: "Wow!", message: "You have reached the last question for Accounting 2! Nice Job! Complete this question and then click on 'Your Score' for a rating!", preferredStyle: .alert)
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

