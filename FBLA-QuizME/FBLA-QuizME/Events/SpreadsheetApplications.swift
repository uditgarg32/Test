//
//  SpreadsheetApplications.swift
//  FBLA-QuizME
//
//  Created by Suchir Agarwal on 11/25/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit

class SpreadsheetApplications: UIViewController {
    
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
                QuestionLabel.text = "To move the screen down one page, press"
                Answer1.setTitle("[Enter]", for: .normal)
                Answer2.setTitle("[Delete]", for: .normal)
                Answer3.setTitle("[PageDown]", for: .normal)
                Answer4.setTitle("[Spacebar]", for: .normal)
                Answer3Correct = true
            case 1:
                QuestionLabel.text = "To paste a range of cells, press"
                Answer1.setTitle("[Ctrl]+[X]", for: .normal)
                Answer2.setTitle("[Ctrl]+[C]", for: .normal)
                Answer3.setTitle("[Ctrl]+[P]", for: .normal)
                Answer4.setTitle("[Ctrl]+[V]", for: .normal)
                Answer4Correct = true
            case 2:
                QuestionLabel.text = "A/an ____ reference does not change when a formula is copied."
                Answer1.setTitle("relative", for: .normal)
                Answer2.setTitle("mixed", for: .normal)
                Answer3.setTitle("absolute", for: .normal)
                Answer4.setTitle("none of the above", for: .normal)
                Answer3Correct = true
            case 3:
                QuestionLabel.text = "When you delete cells, you are given the following option:"
                Answer1.setTitle("Shift cells right", for: .normal)
                Answer2.setTitle("Shift cells down", for: .normal)
                Answer3.setTitle("Entire row", for: .normal)
                Answer4.setTitle("All of the above", for: .normal)
                Answer3Correct = true
            case 4:
                QuestionLabel.text = "To use the Redo command, you can press"
                Answer1.setTitle("[Ctrl]+[Z]", for: .normal)
                Answer2.setTitle("[Ctrl]+[X]", for: .normal)
                Answer3.setTitle("[Ctrl]+[U]", for: .normal)
                Answer4.setTitle("[Ctrl]+[Y]", for: .normal)
                Answer4Correct = true
            case 5:
                QuestionLabel.text = "You can use the Find command to locate"
                Answer1.setTitle("words", for: .normal)
                Answer2.setTitle("sequences of characters", for: .normal)
                Answer3.setTitle("formats", for: .normal)
                Answer4.setTitle("all of the above", for: .normal)
                Answer4Correct = true
            case 6:
                QuestionLabel.text = "You can create a formula using the IF function that displays text based on whether a condition is"
                Answer1.setTitle("old or new", for: .normal)
                Answer2.setTitle("greater or less than", for: .normal)
                Answer3.setTitle("first or last", for: .normal)
                Answer4.setTitle("true or false", for: .normal)
                Answer4Correct = true
            case 7:
                QuestionLabel.text = "To change a column width,"
                Answer1.setTitle("drag the row border to a different size.", for: .normal)
                Answer2.setTitle("double-click a column's right border to AutoFit.", for: .normal)
                Answer3.setTitle("double-click the row's bottom border to AutoFit.", for: .normal)
                Answer4.setTitle("None of the above", for: .normal)
                Answer2Correct = true
            case 8:
                QuestionLabel.text = "To open the Forman cells dialog box, press"
                Answer1.setTitle("[Ctrl]+[1]", for: .normal)
                Answer2.setTitle("[Ctrl]+[2]", for: .normal)
                Answer3.setTitle("[Ctrl]+[3]", for: .normal)
                Answer4.setTitle("[Ctrl]+[4]", for: .normal)
                Answer1Correct = true
            case 9:
                QuestionLabel.text = "To center a page horizontally, choose this tab from the Page Setup dialog box"
                Answer1.setTitle("Page", for: .normal)
                Answer2.setTitle("Margins", for: .normal)
                Answer3.setTitle("Header/Footer", for: .normal)
                Answer4.setTitle("Sheet", for: .normal)
                Answer2Correct = true
            case 10:
                QuestionLabel.text = "A chart sheet shows a"
                Answer1.setTitle("chart in a sheet by itself", for: .normal)
                Answer2.setTitle("chart in a sheet with a worksheet", for: .normal)
                Answer3.setTitle("Chart in a Word document", for: .normal)
                Answer4.setTitle("None of the above", for: .normal)
                Answer1Correct = true
            case 11:
                QuestionLabel.text = "To accept an AutoComplete suggestion, press"
                Answer1.setTitle("[Esc]", for: .normal)
                Answer2.setTitle("[Tab]", for: .normal)
                Answer3.setTitle("[Space]", for: .normal)
                Answer4.setTitle("[Enter]", for: .normal)
                Answer4Correct = true
            case 12:
                QuestionLabel.text = "The horizontal axis is generally the"
                Answer1.setTitle("Y axis", for: .normal)
                Answer2.setTitle("T axis", for: .normal)
                Answer3.setTitle("Z axis", for: .normal)
                Answer4.setTitle("X axis", for: .normal)
                Answer4Correct = true
            case 13:
                QuestionLabel.text = "The MIN function calculates the ____ value in a range."
                Answer1.setTitle("Largest", for: .normal)
                Answer2.setTitle("Smallest", for: .normal)
                Answer3.setTitle("Average", for: .normal)
                Answer4.setTitle("None of the above", for: .normal)
                Answer2Correct = true
            default:
                break
            }
            // Removes the possibility of the question that was just shown to be shown again
            randomQuestionArray.remove(at: randomIndex)
        }
        
        // If the user is on the last question then show them that they have reached the last question
        if (randomQuestionArray.count < 1) {
            let alert = UIAlertController(title: "Wow!", message: "You have reached the last question for Spreadsheet Applications! Nice Job! Complete this question and then click on 'Your Score' for a rating!", preferredStyle: .alert)
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

