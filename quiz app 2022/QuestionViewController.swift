//
//  QuestionViewController.swift
//  quiz app 2022
//
//  Created by Sarah Roodin on 11/14/22.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel?
    
    var questionList:MCQuestionList?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.questionLabel?.text = self.questionList?.results[0].question
    }
    // Do any additional setup after loading the view.
    }
    


