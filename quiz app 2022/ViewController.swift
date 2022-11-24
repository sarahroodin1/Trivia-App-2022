//
//  ViewController.swift
//  quiz app 2022
//
//  Created by Sarah Roodin on 10/31/22.
//

import UIKit
import Alamofire


class ViewController: UIViewController {
    override func viewDidLoad() {
        AF.request("https://opentdb.com/api.php?amount=10&category=9&difficulty=medium&type=multiple").responseDecodable(of: MCQuestionList.self){ response in
            debugPrint(response)
        }

            // Do any additional setup after loading the view.


}

}
