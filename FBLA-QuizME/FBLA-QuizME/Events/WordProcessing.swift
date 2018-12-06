//
//  WordProcessing.swift
//  FBLA-QuizME
//
//  Created by Suchir Agarwal on 11/25/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit

class WordProcessing: UIViewController {
    
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
                QuestionLabel.text = "On Wednesday we will attend"
                Answer1.setTitle("their track mete", for: .normal)
                Answer2.setTitle("their track meet", for: .normal)
                Answer3.setTitle("there track meat", for: .normal)
                Answer4.setTitle("their track meat", for: .normal)
                Answer2Correct = true
            case 1:
                QuestionLabel.text = "The proofreader's mark \"stet\" means"
                Answer1.setTitle("no new paragraph", for: .normal)
                Answer2.setTitle("transpose", for: .normal)
                Answer3.setTitle("let it stand", for: .normal)
                Answer4.setTitle("close up", for: .normal)
                Answer3Correct = true
            case 2:
                QuestionLabel.text = "A subject line is related to"
                Answer1.setTitle("the body of the leter", for: .normal)
                Answer2.setTitle("the inside address", for: .normal)
                Answer3.setTitle("the salutation", for: .normal)
                Answer4.setTitle("the attention line", for: .normal)
                Answer1Correct = true
            case 3:
                QuestionLabel.text = "The enclosure notation is typed a double space below the"
                Answer1.setTitle("reference initials", for: .normal)
                Answer2.setTitle("open", for: .normal)
                Answer3.setTitle("title", for: .normal)
                Answer4.setTitle("double", for: .normal)
                Answer1Correct = true
            case 4:
                QuestionLabel.text = "To return to a single Word window from a split window, click Window on the menu bar and then click"
                Answer1.setTitle("Full Screen", for: .normal)
                Answer2.setTitle("Remove Split", for: .normal)
                Answer3.setTitle("Single Window", for: .normal)
                Answer4.setTitle("Restore", for: .normal)
                Answer2Correct = true
            case 5:
                QuestionLabel.text = "How do you move to the beginning of a document?"
                Answer1.setTitle("[Home]", for: .normal)
                Answer2.setTitle("[Ctrl]+[Home]", for: .normal)
                Answer3.setTitle("[PageUp]", for: .normal)
                Answer4.setTitle("[Ctrl]+[PageUp]", for: .normal)
                Answer2Correct = true
            case 6:
                QuestionLabel.text = "Which of the following is the preferred text alignment in a three-column document?"
                Answer1.setTitle("Left", for: .normal)
                Answer2.setTitle("Right", for: .normal)
                Answer3.setTitle("Center", for: .normal)
                Answer4.setTitle("Justified", for: .normal)
                Answer1Correct = true
            case 7:
                QuestionLabel.text = "Notes or annotations you add to a document are called"
                Answer1.setTitle("comments", for: .normal)
                Answer2.setTitle("suggestions", for: .normal)
                Answer3.setTitle("revisions", for: .normal)
                Answer4.setTitle("reviews", for: .normal)
                Answer1Correct = true
            case 8:
                QuestionLabel.text = "What happens when you narrow te space between columns without changing the number of columns?"
                Answer1.setTitle("Columns widen", for: .normal)
                Answer2.setTitle("Columns narrow", for: .normal)
                Answer3.setTitle("Space between columns does not affect column width", for: .normal)
                Answer4.setTitle("None of the above", for: .normal)
                Answer1Correct = true
            case 9:
                QuestionLabel.text = "What is the name of the feature for changing a picture to a percentage of its original size?"
                Answer1.setTitle("Size", for: .normal)
                Answer2.setTitle("Scale", for: .normal)
                Answer3.setTitle("Crop", for: .normal)
                Answer4.setTitle("Select", for: .normal)
                Answer3Correct = true
            case 10:
                QuestionLabel.text = "What is an antonym?"
                Answer1.setTitle("Word with similar meaning", for: .normal)
                Answer2.setTitle("Word with equivalent meaning", for: .normal)
                Answer3.setTitle("Word with opposite meaning", for: .normal)
                Answer4.setTitle("Word with multiple meanings", for: .normal)
                Answer3Correct = true
            case 11:
                QuestionLabel.text = "Which of the following is a recommended format for information in tables?"
                Answer1.setTitle("Right-align text, right-align numbers", for: .normal)
                Answer2.setTitle("Left-align text, left-align numbers", for: .normal)
                Answer3.setTitle("Right-align text, left-align numbers", for: .normal)
                Answer4.setTitle("Left-align text, right-align", for: .normal)
                Answer4Correct = true
            case 12:
                QuestionLabel.text = "Which of the following inserts a nonbreaking space"
                Answer1.setTitle("[Ctrl]+[Spacebar]", for: .normal)
                Answer2.setTitle("[Shift] + [Spacebar]", for: .normal)
                Answer3.setTitle("[Ctrl] + [Shift] + [Spacebar]", for: .normal)
                Answer4.setTitle("None of the above", for: .normal)
                Answer3Correct = true
            case 13:
                QuestionLabel.text = "In a business letter, you generally ____ to indicate the beginning of a new paragraph."
                Answer1.setTitle("date", for: .normal)
                Answer2.setTitle("single space", for: .normal)
                Answer3.setTitle("skip a line", for: .normal)
                Answer4.setTitle("none of the above", for: .normal)
                Answer3Correct = true
            default:
                break
            }
            // Removes the possibility of the question that was just shown to be shown again
            randomQuestionArray.remove(at: randomIndex)
        }
        
        // If the user is on the last question then show them that they have reached the last question
        if (randomQuestionArray.count < 1) {
            let alert = UIAlertController(title: "Wow!", message: "You have reached the last question for Word Processing! Nice Job! Complete this question and then click on 'Your Score' for a rating!", preferredStyle: .alert)
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

