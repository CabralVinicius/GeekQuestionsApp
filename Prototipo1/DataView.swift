//
//  DataView.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 26/04/23.
//

import Foundation

struct Anwser {
    let text: String
    let correct: Bool
}

struct Questions {
    let question : String
    let alternatives : [Anwser]
    
    init(question: String, alternatives : [Anwser]) {
        self.question = question
        self.alternatives = alternatives.shuffled()
    }
    
    func anwserCheck(_ anwserChoice: Int) {
        if alternatives[anwserChoice].correct{
            print("Você acertou a resposta é \(alternatives[anwserChoice].text)")
        } else {
            if let correctAnwser = alternatives.first(where: {$0.correct == true})?.text {
                print("Você errou, a resposta é \(correctAnwser), sua resposta foi \(alternatives[anwserChoice].text)")
            }
        }
    }
}
