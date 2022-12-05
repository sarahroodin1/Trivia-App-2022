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
    
    @IBOutlet weak var questionLabel: UILabel?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.questionLabel?.text = self.questionList?.questions[0].question
    }
    // Do any additional setup after loading the view.
    }
    


