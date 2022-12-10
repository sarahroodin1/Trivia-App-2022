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
        if(AButtonOutlet.isPressed){
            AButtonOutlet.color = UIColor.red
            AButtonOutlet.setTitle("Incorrect", for: UIControl.State)
        }
    }
    @IBOutlet weak var AButtonOutlet: UIButton!
    
    @IBAction func BButtonAction(_ sender: Any) {
        if(BButtonOutlet.isPressed){
            BButtonOutlet.color = UIColor.green
            BButtonOutlet.setTitle("Correct", for: UIControl.State)
        }
    }
    @IBOutlet weak var BButtonOutlet: UIButton!
    
    @IBAction func CButtonAction(_ sender: Any) {
        if(CButtonOutlet.isPressed){
            CButtonOutlet.color = UIColor.red
            CButtonOutlet.setTitle("Incorrect", for: UIControl.State)
        }
    }
    @IBOutlet weak var CButtonOutlet: UIButton!
    
    @IBAction func DButtonAction(_ sender: Any) {
        if(DButtonOutlet.isPressed){
            DButtonOutlet.color = UIColor.red
            DButtonOutlet.setTitle("Incorrect", for: UIControl.State)
        }
    }
    @IBOutlet weak var DButtonOutlet: UIButton!
   
    @IBOutlet weak var questionLabel: UILabel?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var randomNum =  Int.random(in: 0..<11)
        self.questionLabel?.text = self.questionList?.questions[randomNum].question
        
        //assigning values from API to buttons
        
        //A is always incorrect
        AButtonOutlet.setTitle(questionList?.questions[randomNum].incorrectAnswer[0], for: .normal)
        //B is always correct
        BButtonOutlet.setTitle(questionList?.questions[randomNum].correctAnswer, for: .normal)
        //C is always incorrect
        CButtonOutlet.setTitle(questionList?.questions[randomNum].incorrectAnswer[1], for: .normal)
        //D is always incorrect
        DButtonOutlet.setTitle(questionList?.questions[randomNum].incorrectAnswer[2], for: .normal)
    }

    // Do any additional setup after loading the view.
    }
    


