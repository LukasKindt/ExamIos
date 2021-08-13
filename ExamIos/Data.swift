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
        let vak4 = Summary(name: "Muziek", summary: "Lyrics Bohemian Rhapsody:\n\nIs this the real life? \nIs this just fantasy?\nCaught in a landside,\nNo escape from reality\nOpen your eyes,\nLook up to the skies and see,\nI'm just a poor boy, I need no sympathy,\nBecause I'm easy come, easy go,\nLittle high, little low,\nAny way the wind blows doesn't really matter to\nMe, to me\n\nMamaaa,\nJust killed a man,\nPut a gun against his head, pulled my trigger,\nNow he's dead\nMamaaa, life had just begun,\nBut now I've gone and thrown it all away\nMama, oooh,\nDidn't mean to make you cry,\nIf I'm not back again this time tomorrow,\nCarry on, carry on as if nothing really matters\n\nToo late, my time has come,\nSends shivers down my spine, body's aching all\nThe time\nGoodbye, everybody, I've got to go,\nGotta leave you all behind and face the truth\nMama, oooh\nI don't want to die,\nI sometimes wish I'd never been born at all.\n\nI see a little silhouetto of a man,\nScaramouch, Scaramouch, will you do the Fandango!\n\nThunderbolts and lightning, very, very frightening me\nGalileo, Galileo\nGalileo, Galileo\nGalileo, Figaro - magnificoo\n\nI'm just a poor boy nobody loves me\nHe's just a poor boy from a poor family,\nSpare him his life from this monstrosity\nEasy come, easy go, will you let me go\nBismillah! No, we will not let you go\n(Let him go!) Bismillah! We will not let you go\n(Let him go!) Bismillah! We will not let you go\n(Let me go) Will not let you go\n(Let me go)(Never) Never let you go\n(Let me go) (Never) let you go (Let me go) Ah\nNo, no, no, no, no, no, no\nOh mama mia, mama mia, mama mia, let me go\nBeelzebub has a devil put aside for me, for me,\nFor meee\n\nSo you think you can stop me and spit in my eye\nSo you think you can love me and leave me to die\nOh, baby, can't do this to me, baby,\nJust gotta get out, just gotta get right outta here\n\nNothing really matters, Anyone can see,\nNothing really matters,\nNothing really matters to me\nAny way the wind blows...")
        
        summaries.append(frans1);
        summaries.append(frans2);
        summaries.append(wiskunde1);
        summaries.append(vak4)
        
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
