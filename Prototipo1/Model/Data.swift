//
//  DataView.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 26/04/23.
//

import Foundation

struct Anwser {
    let text: String
    var correct: Bool = false
}

struct Questions {
    let question : String
    let alternatives : [Anwser]
    
    init(question: String, alternatives : [Anwser]) {
        self.question = question
        self.alternatives = alternatives.shuffled()
    }
    
    /*func anwserCheck(_ anwserChoice: Int) {
        if alternatives[anwserChoice].correct{
            print("Você acertou a resposta é \(alternatives[anwserChoice].text)")
        } else {
            if let correctAnwser = alternatives.first(where: {$0.correct == true})?.text {
                print("Você errou, a resposta é \(correctAnwser), sua resposta foi \(alternatives[anwserChoice].text)")
            }
        }
    }*/
}

var questions: [Questions] = [
    
    Questions(question: "Qual dos animes abaixo foi desenvolvido pelo estúdio Ghibli?",
              alternatives: [Anwser(text: "A Viagem de Chihiro ", correct: true),
                             Anwser(text: "Shaman King "),
                             Anwser(text: "Naruto "),
                             Anwser(text: "Death Note "),
                             Anwser(text: "Inu Yasha ")]),
    
    Questions(question: "Qual a bebida preferida do Kel da série Kennan e Kel exibida entre 1996 e 2000 na Nickelodeon?",
              alternatives: [Anwser(text: "Suco de uva ", correct: false),
                             Anwser(text: "Cerveja ", correct: false),
                             Anwser(text: "Agua tônica ", correct: false),
                             Anwser(text: "Refrigerante de laranja ", correct: true),
                             Anwser(text: "Suco de tomate ", correct: false)]),
    
    Questions(question: "Quem é o autor de O Senhor dos Anéis?",
              alternatives: [Anwser(text: "Bram Stoker "),
                             Anwser(text: "H. G. Wells "),
                             Anwser(text: "Júlio Verne "),
                             Anwser(text: "Érico Veríssimo "),
                             Anwser(text: "J. R. R. Tolkien ", correct: true)]),
    
    Questions(question: "Qual é o nome do jogo de cartas jogado pelos personagens da série Yu-Gi-Oh! ?",
              alternatives: [Anwser(text: "Magic: The Gathering ", correct: false),
                             Anwser(text: "Duel Monsters ", correct: true),
                             Anwser(text: "Pokémon Trading Card Game ", correct: false),
                             Anwser(text: "World of Warcraft TCG ", correct: false),
                             Anwser(text: "Hearthstone ", correct: false)]),
    
    Questions(question: "Qual é o nome da personagem principal da série de jogos Tomb Raider?",
              alternatives: [Anwser(text: "Sam Nishimura ", correct: false),
                             Anwser(text: "Kurtis Trent ", correct: false),
                             Anwser(text: "Lara Croft ", correct: true),
                             Anwser(text: "Amanda Evert ", correct: false),
                             Anwser(text: "Jacob ", correct: false)]),
    
    Questions(question: "Qual é o nome do personagem principal da série de jogos God of War?",
              alternatives: [Anwser(text: "Hades ", correct: false),
                             Anwser(text: "Ares ", correct: false),
                             Anwser(text: "Zeus ", correct: false),
                             Anwser(text: "Atreus ", correct: false),
                             Anwser(text: "Kratos ", correct: true)]),
    
]
