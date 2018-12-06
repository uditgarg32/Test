//
//  BusinessCommunication.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/24/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit


class BusinessCommunication: UIViewController {
    
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
                QuestionLabel.text = "The opener for a persuasive approach does not include ____."
                Answer1.setTitle("relevancy to the subject", for: .normal)
                Answer2.setTitle("connection between the topic and the receiver", for: .normal)
                Answer3.setTitle("a suitable quote or analogy", for: .normal)
                Answer4.setTitle("trite expressions or cliché", for: .normal)
                Answer4Correct = true
            case 1:
                QuestionLabel.text = "Which  statement is incorrect about spreadsheets?"
                Answer1.setTitle("Spreadsheets are used to perform calculations.", for: .normal)
                Answer2.setTitle("Spreadsheets project 'what if' answers.", for: .normal)
                Answer3.setTitle("Spreadsheets can store data about a person/product.", for: .normal)
                Answer4.setTitle("Spreadsheets are the same as presentation software.", for: .normal)
                Answer3Correct = true
            case 2:
                QuestionLabel.text = "Most successful sales messages ____."
                Answer1.setTitle("use writer-oriented appeals", for: .normal)
                Answer2.setTitle("combine rational and emotional appeals", for: .normal)
                Answer3.setTitle("concentrate on the cost appeal", for: .normal)
                Answer4.setTitle("none of the above", for: .normal)
                Answer2Correct = true
            case 3:
                QuestionLabel.text = "The least effective method of acknowledging an order is ____."
                Answer1.setTitle("a postcard", for: .normal)
                Answer2.setTitle("an acknowledgment form", for: .normal)
                Answer3.setTitle("a duplicate invoice", for: .normal)
                Answer4.setTitle("a form letter", for: .normal)
                Answer3Correct = true
            case 4:
                QuestionLabel.text = "Short, informal reports used internally are known as ____."
                Answer1.setTitle("statistical reports", for: .normal)
                Answer2.setTitle("research reports", for: .normal)
                Answer3.setTitle("memo reports", for: .normal)
                Answer4.setTitle("supplemental reports", for: .normal)
                Answer3Correct = true
            case 5:
                QuestionLabel.text = "The term that best describes the trend in tone in today's memos is ____."
                Answer1.setTitle("formal", for: .normal)
                Answer2.setTitle("informal", for: .normal)
                Answer3.setTitle("friendly", for: .normal)
                Answer4.setTitle("cordial", for: .normal)
                Answer2Correct = true
            case 6:
                QuestionLabel.text = "Internal newsletters can be used to ____."
                Answer1.setTitle("provide employee recognition", for: .normal)
                Answer2.setTitle("educate employees", for: .normal)
                Answer3.setTitle("improve relations within the company", for: .normal)
                Answer4.setTitle("all of the above", for: .normal)
                Answer4Correct = true
            case 7:
                QuestionLabel.text = "Which is not a realistic goal to achieve in developing a press release?"
                Answer1.setTitle("The media is appropriate.", for: .normal)
                Answer2.setTitle("The page length is appropriate.", for: .normal)
                Answer3.setTitle("All the necessary information is included.", for: .normal)
                Answer4.setTitle("The press release is clear and to the point.", for: .normal)
                Answer2Correct = true
            case 8:
                QuestionLabel.text = "Preparation of the agenda for a regularly scheduled meeting begins ____."
                Answer1.setTitle("immediately before the meeting", for: .normal)
                Answer2.setTitle("immediately after the last meeting", for: .normal)
                Answer3.setTitle("as the group meets to add their agenda items", for: .normal)
                Answer4.setTitle("one week before the meeting", for: .normal)
                Answer2Correct = true
            case 9:
                QuestionLabel.text = "A résumécan best be described as ____."
                Answer1.setTitle("a summary of  your background", for: .normal)
                Answer2.setTitle("a biographical sketch", for: .normal)
                Answer3.setTitle("a vitá", for: .normal)
                Answer4.setTitle("an inventory", for: .normal)
                Answer1Correct = true
            case 10:
                QuestionLabel.text = "Avoid choosing words like assisted and participated; use effective action words or phrases such as ____."
                Answer1.setTitle("interesting job", for: .normal)
                Answer2.setTitle("utilize my skills and training", for: .normal)
                Answer3.setTitle("work with people", for: .normal)
                Answer4.setTitle("accomplished and coordinated", for: .normal)
                Answer4Correct = true
            case 11:
                QuestionLabel.text = "Which of the following should not be considered before you write your cover letter?"
                Answer1.setTitle("What does the organization do, make, or sell?", for: .normal)
                Answer2.setTitle("What is my central selling point?", for: .normal)
                Answer3.setTitle("Why type of cover letter should I write?", for: .normal)
                Answer4.setTitle("How much money do I want to earn?", for: .normal)
                Answer4Correct = true
            case 12:
                QuestionLabel.text = "Closed questions on an interview are ____."
                Answer1.setTitle("highly structured", for: .normal)
                Answer2.setTitle("loosely structured", for: .normal)
                Answer3.setTitle("structured for stress interviews only", for: .normal)
                Answer4.setTitle("needed in all types of interviews", for: .normal)
                Answer1Correct = true
            default:
                break
            }
            // Removes the possibility of the question that was just shown to be shown again
            randomQuestionArray.remove(at: randomIndex)
        }
        
        // If the user is on the last question then show them that they have reached the last question
        if (randomQuestionArray.count < 1) {
            let alert = UIAlertController(title: "Wow!", message: "You have reached the last question for Business Communication! Nice Job! Complete this question and then click on 'Your Score' for a rating!", preferredStyle: .alert)
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


