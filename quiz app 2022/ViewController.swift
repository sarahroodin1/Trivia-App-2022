//
//  ViewController.swift
//  quiz app 2022
//
//  Created by Sarah Roodin on 10/31/22.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    var question:MCQuestion?
    var questionList:MCQuestionList?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
       if(segue.identifier == "startGameSegue"){
           let secondView = segue.destination as!
           QuestionViewController
           secondView.questionList = self.questionList
       }
    }
    @IBAction func startGame(_ sender: Any) {
            AF.request("https://opentdb.com/api.php?amount=10&category=9&difficulty=medium&type=multiple").responseDecodable(of: MCQuestionList.self){ response in
                self.questionList = response.value
                self.performSegue(withIdentifier: "startGameSegue", sender: self)
            
            
        
    }
    

            // Do any additional setup after loading the view.


}

}

