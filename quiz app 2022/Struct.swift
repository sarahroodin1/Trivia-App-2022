//
//  Struct.swift
//  quiz app 2022
//
//  Created by Sarah Roodin on 11/23/22.
//

import Foundation

struct MCQuestion: Decodable{
    var category: String
    var type: String
    var difficulty: String
    var question: String
    var correct_answer: String
    var incorrect_answers: [String]
}

struct MCQuestionList: Decodable{
    var results: [MCQuestion]
}
