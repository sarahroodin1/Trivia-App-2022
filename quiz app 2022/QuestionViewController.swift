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
    var arrayNum = 0

    
    //if buttons are pressed change title to correct or incorrect
    //after 1 second set text to next question
    @IBAction func AButtonAction(_ sender: Any) {
        AButtonOutlet.isSelected = true
        AButtonOutlet.setTitleColor(UIColor.red, for: UIControl.State.selected)
        AButtonOutlet.setTitle("Incorrect", for: UIControl.State.selected)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.loadQuestion()
        }
            
        //find code for after 1 second
       
        
        }

    @IBOutlet weak var AButtonOutlet: UIButton!
    
    @IBAction func BButtonAction(_ sender: Any) {
        BButtonOutlet.isSelected = true
        BButtonOutlet.setTitleColor(UIColor.init(red: 0, green: 255, blue: 0, alpha: 255), for: UIControl.State.selected)
        BButtonOutlet.setTitle("Correct", for: UIControl.State.selected)
       
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.loadQuestion()
        }
            
        }

    @IBOutlet weak var BButtonOutlet: UIButton!
    
    @IBAction func CButtonAction(_ sender: Any) {
        CButtonOutlet.isSelected = true
        CButtonOutlet.setTitleColor(UIColor.red, for: UIControl.State.selected)
        CButtonOutlet.setTitle("Incorrect", for: UIControl.State.selected)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.loadQuestion()
        }
            
    }
    @IBOutlet weak var CButtonOutlet: UIButton!
    
    @IBAction func DButtonAction(_ sender: Any) {
        DButtonOutlet.isSelected = true
        DButtonOutlet.setTitleColor(UIColor.red, for: UIControl.State.selected)
        DButtonOutlet.setTitle("Incorrect", for: UIControl.State.selected)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.loadQuestion()
        }
            

    }
    @IBOutlet weak var DButtonOutlet: UIButton!
   
    @IBOutlet weak var questionLabel: UILabel?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadQuestion()
      
        //assigning values from API to buttons
        
        
    }
    func loadQuestion (){
        arrayNum+=1
        self.questionLabel?.text = self.questionList?.results[arrayNum].question
         
        //A is always incorrect
        AButtonOutlet.setTitle(questionList?.results[arrayNum].incorrect_answers[0], for: .normal)
        //B is always correct
        BButtonOutlet.setTitle(questionList?.results[arrayNum].correct_answer, for: .normal)
        //C is always incorrect
        CButtonOutlet.setTitle(questionList?.results[arrayNum].incorrect_answers[1], for: .normal)
        //D is always incorrect
        DButtonOutlet.setTitle(questionList?.results[arrayNum].incorrect_answers[2], for: .normal)
    }
    func nextQuestion(){
        if(AButtonOutlet.isSelected || BButtonOutlet.isSelected || CButtonOutlet.isSelected || DButtonOutlet.isSelected){
            
            AButtonOutlet.setTitle(questionList?.results[arrayNum + 1].incorrect_answers[0], for: .normal)
            BButtonOutlet.setTitle(questionList?.results[arrayNum + 1].correct_answer, for: .normal)
            CButtonOutlet.setTitle(questionList?.results[arrayNum + 1].incorrect_answers[1], for: .normal)
            DButtonOutlet.setTitle(questionList?.results[arrayNum + 1].incorrect_answers[2], for: .normal)
        }
    }
}
    


