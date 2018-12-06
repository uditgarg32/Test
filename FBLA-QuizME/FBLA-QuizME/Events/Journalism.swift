//
//  Journalism.swift
//  FBLA-QuizME
//
//  Created by Udit Garg on 11/28/18.
//  Copyright © 2018 Udit Garg. All rights reserved.
//

import Foundation
import UIKit
import MessageUI


class Journalism: UIViewController {
    
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
                    QuestionLabel.text = "From a business perspective, all of the following are disadvantages of TV broadcasting EXCEPT"
                    Answer1.setTitle("Increased use of DVRs", for: .normal)
                    Answer2.setTitle("Success to promote mass consumer products", for: .normal)
                    Answer3.setTitle("Audience share is declining due to add fragmentation", for: .normal)
                    Answer4.setTitle("TV shows skew older and lower income", for: .normal)
                    Answer2Correct = true
                case 1:
                    QuestionLabel.text = "Social media is allowing users to participate in generating news like never before. Pew Research found all of the following to be true EXCEPT"
                    Answer1.setTitle("50% shared or reposted news stories, videos, or images", for: .normal)
                    Answer2.setTitle("Less than 10% of online users commented about the news", for: .normal)
                    Answer3.setTitle("14% posted pictures of news", for: .normal)
                    Answer4.setTitle("12% posted videos of news", for: .normal)
                    Answer2Correct = true
                case 2:
                    QuestionLabel.text = "A short audio or video segment produced to advertise an upcoming news bulletin or news items is called a(n)"
                    Answer1.setTitle("teaser", for: .normal)
                    Answer2.setTitle("PR", for: .normal)
                    Answer3.setTitle("promo", for: .normal)
                    Answer4.setTitle("commercial", for: .normal)
                    Answer1Correct = true
                case 3:
                    QuestionLabel.text = "News as a product has two important economic features. One feature is that it is \"non-excludable\" meaning"
                    Answer1.setTitle("Once the news is reported, it is copyrighted", for: .normal)
                    Answer2.setTitle("Successful news reporting is dependent on interviews ", for: .normal)
                    Answer3.setTitle("No one can be excluded from the news", for: .normal)
                    Answer4.setTitle("Anyone else can use reported news", for: .normal)
                    Answer4Correct = true
                case 4:
                    QuestionLabel.text = "A \"hard news\" story does what?"
                    Answer1.setTitle("Lists the bones of the story", for: .normal)
                    Answer2.setTitle("Has Interviews of everyone involved", for: .normal)
                    Answer3.setTitle("Is written from research", for: .normal)
                    Answer4.setTitle("Makes conclusions", for: .normal)
                    Answer1Correct = true
                case 5:
                    QuestionLabel.text = "Which street name should NOT be abbreviated according to AP Style?"
                    Answer1.setTitle("35 Cherry St.", for: .normal)
                    Answer2.setTitle("26 Rose Ave.", for: .normal)
                    Answer3.setTitle("90 Holmes Blvd.", for: .normal)
                    Answer4.setTitle("59 Vine Dr.", for: .normal)
                    Answer4Correct = true
                case 6:
                    QuestionLabel.text = "Which headline is most consistent with AP style in voice, structure, and format? "
                    Answer1.setTitle("Budget announced by President. Congress to discuss it", for: .normal)
                    Answer2.setTitle("President announces budget; Congress to discuss it", for: .normal)
                    Answer3.setTitle("President announces budget: Congress shall discuss it", for: .normal)
                    Answer4.setTitle("Budget announced by President; Congress will discuss it", for: .normal)
                    Answer2Correct = true
                case 7:
                    QuestionLabel.text = " When someone does NOT give credit for words and ideas that is called what?"
                    Answer1.setTitle("Stealing", for: .normal)
                    Answer2.setTitle("Attribution", for: .normal)
                    Answer3.setTitle("Plagiarism", for: .normal)
                    Answer4.setTitle("The internet", for: .normal)
                    Answer3Correct = true
                case 8:
                    QuestionLabel.text = "Which government agency requires pharmaceutical ads contain disclosures when broadcast on TV"
                    Answer1.setTitle("FDA", for: .normal)
                    Answer2.setTitle("FCC", for: .normal)
                    Answer3.setTitle("FBI", for: .normal)
                    Answer4.setTitle("FTC", for: .normal)
                    Answer1Correct = true
                case 9:
                    QuestionLabel.text = "What event coincided with a huge loss of trust in mass media?"
                    Answer1.setTitle("The terrorist attacks on Sept. 11, 2001.", for: .normal)
                    Answer2.setTitle("The 24-hour news cycle.", for: .normal)
                    Answer3.setTitle("The false information printed by Stephen Glass.", for: .normal)
                    Answer4.setTitle("The closing of the Rocky Mountain News.", for: .normal)
                    Answer1Correct = true
                case 10:
                    QuestionLabel.text = "Congratulations on becoming the movie reviewer! To prepare for your first review, you should:"
                    Answer1.setTitle("ask to speak with someone for quotes after the watching it", for: .normal)
                    Answer2.setTitle("Record clips of the movie to ensure accuracy", for: .normal)
                    Answer3.setTitle("Call the movie theater and tell them that you are coming", for: .normal)
                    Answer4.setTitle("Make sure you have enough materials to take good notes", for: .normal)
                    Answer4Correct = true
                case 11:
                    QuestionLabel.text = "An editorial board is defined as"
                    Answer1.setTitle("A bulletin board of story ideas for editors to consider", for: .normal)
                    Answer2.setTitle("A group of people who vote on what people cover what", for: .normal)
                    Answer3.setTitle("Group of people who determine style in a paper", for: .normal)
                    Answer4.setTitle("It was a physical board, but is now a digital place for editing", for: .normal)
                    Answer3Correct = true
                case 12:
                    QuestionLabel.text = "Who is NOT a historical figure of journalism?"
                    Answer1.setTitle("Joseph Pulitzer", for: .normal)
                    Answer2.setTitle("Frederick Douglass", for: .normal)
                    Answer3.setTitle("Andrew Mulligan", for: .normal)
                    Answer4.setTitle("William Randolph Hearst", for: .normal)
                    Answer3Correct = true
                default:
                    break
            }
            // Removes the possibility of the question that was just shown to be shown again
            randomQuestionArray.remove(at: randomIndex)
        }
        
        // If the user is on the last question then show them that they have reached the last question
        if (randomQuestionArray.count < 1) {
            let alert = UIAlertController(title: "Wow!", message: "You have reached the last question for Journalism! Nice Job! Complete this question and then click on 'Your Score' for a rating!", preferredStyle: .alert)
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

