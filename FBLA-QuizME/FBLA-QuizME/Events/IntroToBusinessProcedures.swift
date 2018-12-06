//
//  IntroToBusinessProcedures.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/2/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit
import MessageUI


class IntroToBusinessProcedures: UIViewController {
    
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
                    QuestionLabel.text = "What Microsoft Access database object allows you to display one record at the time?"
                    Answer1.setTitle("Table", for: .normal)
                    Answer2.setTitle("Form", for: .normal)
                    Answer3.setTitle("Query", for: .normal)
                    Answer4.setTitle("Report", for: .normal)
                    Answer2Correct = true
                case 1:
                    QuestionLabel.text = "What database element would be used to automatically insert parentheses and dashes into a phone number?"
                    Answer1.setTitle("Concatenation", for: .normal)
                    Answer2.setTitle("Input mask", for: .normal)
                    Answer3.setTitle("Lookup wizard", for: .normal)
                    Answer4.setTitle("Primary key", for: .normal)
                    Answer2Correct = true
                case 2:
                    QuestionLabel.text = "What type of network is used to link computers together over a great distance?"
                    Answer1.setTitle("Local area network", for: .normal)
                    Answer2.setTitle("Wide area network", for: .normal)
                    Answer3.setTitle("Geographical area network", for: .normal)
                    Answer4.setTitle("Storage area network", for: .normal)
                    Answer2Correct = true
                case 3:
                    QuestionLabel.text = "Which of the following is not a type in Microsoft Access?"
                    Answer1.setTitle("Hyperlink", for: .normal)
                    Answer2.setTitle("Text", for: .normal)
                    Answer3.setTitle("E-mail Address", for: .normal)
                    Answer4.setTitle("Date/Time", for: .normal)
                    Answer3Correct = true
                case 4:
                    QuestionLabel.text = "Which of the following is a complete Internet address?"
                    Answer1.setTitle("htp://www.tvworld.com", for: .normal)
                    Answer2.setTitle("http://ww.tvworld.com", for: .normal)
                    Answer3.setTitle("www.tvworld.com", for: .normal)
                    Answer4.setTitle("http://www.tvworld.com", for: .normal)
                    Answer4Correct = true
                case 5:
                    QuestionLabel.text = "What type of mail offers one-tothree-day service to most domestic locations?"
                    Answer1.setTitle("Priority mail", for: .normal)
                    Answer2.setTitle("Express mail", for: .normal)
                    Answer3.setTitle("Bulk mail", for: .normal)
                    Answer4.setTitle("Third-class mail", for: .normal)
                    Answer1Correct = true
                case 6:
                    QuestionLabel.text = "What part of an e-mail address follows the @ symbol?"
                    Answer1.setTitle("Domain", for: .normal)
                    Answer2.setTitle("Username", for: .normal)
                    Answer3.setTitle("Separator", for: .normal)
                    Answer4.setTitle("Extension", for: .normal)
                    Answer1Correct = true
                case 7:
                    QuestionLabel.text = "The process of sendinginformation from your computer to the Internet is known as"
                    Answer1.setTitle("linking", for: .normal)
                    Answer2.setTitle("downloading", for: .normal)
                    Answer3.setTitle("saving", for: .normal)
                    Answer4.setTitle("uploading", for: .normal)
                    Answer4Correct = true
                case 8:
                    QuestionLabel.text = "Salary increases and promotions are an example of _________ motivation. "
                    Answer1.setTitle("managerial", for: .normal)
                    Answer2.setTitle("extrinsic", for: .normal)
                    Answer3.setTitle("intrinsic", for: .normal)
                    Answer4.setTitle("organizational", for: .normal)
                    Answer2Correct = true
                case 9:
                    QuestionLabel.text = "MBO is a human relations term that means "
                    Answer1.setTitle("management by objectives.", for: .normal)
                    Answer2.setTitle("managing by opinions.", for: .normal)
                    Answer3.setTitle("management by organization.", for: .normal)
                    Answer4.setTitle("management between organizations.", for: .normal)
                    Answer1Correct = true
                case 10:
                    QuestionLabel.text = "An official document that certifies the identity of a person and grants them permission to travel abroad is called a(an)"
                    Answer1.setTitle("itinerary", for: .normal)
                    Answer2.setTitle("international ID", for: .normal)
                    Answer3.setTitle("agenda", for: .normal)
                    Answer4.setTitle("passport", for: .normal)
                    Answer4Correct = true
                case 11:
                    QuestionLabel.text = "Of the following statements, which is not effective job training?"
                    Answer1.setTitle("Relate previously developed knowledge", for: .normal)
                    Answer2.setTitle("Complete training in long periods of time", for: .normal)
                    Answer3.setTitle("Explain why as well as how something is done", for: .normal)
                    Answer4.setTitle("Letting the trainee become comfortable", for: .normal)
                    Answer2Correct = true
                case 12:
                    QuestionLabel.text = "The fastest mail delivery offered by the United States Postal Service is"
                    Answer1.setTitle("express mail.", for: .normal)
                    Answer2.setTitle("priority mail.", for: .normal)
                    Answer3.setTitle("quick mail.", for: .normal)
                    Answer4.setTitle("important mail.", for: .normal)
                    Answer1Correct = true
                default:
                    break
            }
            // Removes the possibility of the question that was just shown to be shown again
            randomQuestionArray.remove(at: randomIndex)
        }
        
        // If the user is on the last question then show them that they have reached the last question
        if (randomQuestionArray.count < 1) {
            let alert = UIAlertController(title: "Wow!", message: "You have reached the last question for Introduction to Business Procedures! Nice Job! Complete this question and then click on 'Your Score' for a rating!", preferredStyle: .alert)
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

