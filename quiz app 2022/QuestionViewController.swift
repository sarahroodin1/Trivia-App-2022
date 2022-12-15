//
//  QuestionViewController.swift
//  quiz app 2022
//
//  Created by Sarah Roodin on 11/14/22.
//

import UIKit

class QuestionViewController: UIViewController {

    var question:MCQuestion?
    var questionList:MCQuestionList?
    
    //if buttons are pressed change title to correct or incorrect
    @IBAction func AButtonAction(_ sender: Any) {
        AButtonOutlet.setTitleColor(UIColor.red, for: UIControl.State.selected)
        AButtonOutlet.setTitle("Incorrect", for: UIControl.State.selected)
        }

    @IBOutlet weak var AButtonOutlet: UIButton!
    
    @IBAction func BButtonAction(_ sender: Any) {
        BButtonOutlet.setTitleColor(UIColor.green, for: UIControl.State.selected)
        BButtonOutlet.setTitle("Correct", for: UIControl.State.selected)
        }

    @IBOutlet weak var BButtonOutlet: UIButton!
    
    @IBAction func CButtonAction(_ sender: Any) {
        CButtonOutlet.setTitleColor(UIColor.red, for: UIControl.State.selected)
        CButtonOutlet.setTitle("Incorrect", for: UIControl.State.selected)
    }
    @IBOutlet weak var CButtonOutlet: UIButton!
    
    @IBAction func DButtonAction(_ sender: Any) {
        DButtonOutlet.setTitleColor(UIColor.red, for: UIControl.State.selected)
        DButtonOutlet.setTitle("Incorrect", for: UIControl.State.selected)
    }
    @IBOutlet weak var DButtonOutlet: UIButton!
   
    @IBOutlet weak var questionLabel: UILabel?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomNum =  Int.random(in: 0..<11)
        
       // self.questionLabel?.text = self.questionList?.questions[randomNum].question
        
        //assigning values from API to buttons
                
        //A is always incorrect
        AButtonOutlet.setTitle(questionList?.results[randomNum].incorrect_answers[0], for: .normal)
        //B is always correct
        BButtonOutlet.setTitle(questionList?.results[randomNum].correct_answer, for: .normal)
        //C is always incorrect
        CButtonOutlet.setTitle(questionList?.results[randomNum].incorrect_answers[1], for: .normal)
        //D is always incorrect
        DButtonOutlet.setTitle(questionList?.results[randomNum].incorrect_answers[2], for: .normal)
        
    }
}
    


