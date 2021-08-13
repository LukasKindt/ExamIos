//
//  Question.swift
//  ExamIos
//
//  Created by Lukas Kindt on 09/08/2021.
//

import Foundation

class Question{
    var question: String
    var answer: String
    var reverse: Bool?
    
    init(question: String, answer: String){
        self.question = question
        self.answer = answer
    }
}
