//
//  File.swift
//  ExamIos
//
//  Created by Lukas Kindt on 10/08/2021.
//

import Foundation

class Data {
    
    static let shared = Data()
    var summaries: [Summary] = [];
    
    init(){
        let frans1 = Summary(name: "Frans Hoofdstuk 1", summary: "Om Hallo te zeggen zeg je 'salut' en om salut te zeggen zeg je 'salut'.")
        let frans2 = Summary(name: "Frans Hoofdstuk 2", summary: "Dit is nog een samenvatting van Frans")
        let wiskunde1 = Summary(name: "Wiskunde - optellen", summary: "1 + 1 = 2 en 2 + 2 = 4")
        
        summaries.append(frans1);
        summaries.append(frans2);
        summaries.append(wiskunde1);
        
        /*let frans = Course(name: "Frans");
        let wiskunde = Course(name: "Wiskunde");
        courses.append(frans);
        courses.append(wiskunde);
        
        //let fransChapter1 = Chapter(title: "Bienvenue");
        //let fransChapter2 = Chapter(title: "Salut");
        //let wiskundeChapter1 = Chapter(title: "Optellen");
        //let wiskundeChapter2 = Chapter(title: "Aftrekken");
        
        //frans.addChapter(chapter: fransChapter1);
        //frans.addChapter(chapter: fransChapter2);
        //wiskunde.addChapter(chapter: wiskundeChapter1);
        //wiskunde.addChapter(chapter: wiskundeChapter2);
        
        let bienvenueQuestion1 = Question(question: "vertaal hallo", answer: "bienvenue");
        let bienvenueQuestion2 = Question(question: "vertaal salut", answer: "salut");
        let optellenQuestion1 = Question(question: "5 + 4", answer: "9");
        let optellenQuestion2 = Question(question: "2 + 3", answer: "5");
        
        frans.addQuestion(question: bienvenueQuestion1);
        frans.addQuestion(question: bienvenueQuestion2);
        wiskunde.addQuestion(question: optellenQuestion1);
        wiskunde.addQuestion(question: optellenQuestion2);*/
    }
}
