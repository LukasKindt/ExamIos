//
//  Chapter.swift
//  ExamIos
//
//  Created by Lukas Kindt on 09/08/2021.
//

import Foundation

class Chapter{
    
    var title: String
    var description: String?
    var questions: [Question]
    
    init(title: String){
        self.title = title
        questions = []
    }
    
    func addQuestion(question: Question){
        questions.append(question)
    }
}
