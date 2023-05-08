//
//  QuestionsViewModel.swift
//  Prototipo1
//
//  Created by Vinicius Cabral on 07/05/23.
//

import Foundation
import SwiftUI

//Evitar usar swiftUI na ViewModel

class QuestionViewModel : ObservableObject {
    @Published var showSheet = false // End game sheet
    @Published var questionCounter = 0
    
    // Button flip animation
    @Published var animationAmount = 0.0
    @Published var flipIndex = -1
    @Published var anwserColor = Color("color4")
    @Published var answered = false // Answered questions
    @Published var isMusicOn: Bool = false// Binding connection between screens
    let shuffledQuestions = questions.shuffled()
    
    
    // Questions logic
    @Published var currentQuestionIndex = 0
    @Published var score = 0
    @Published var disabledAnswerIndexes: [Int] = [] // Answered questions index
    @Published var usedQuestionIndexes: [Int] = [] // Used questions
    
    
    /*private var randomQuestion: Questions { // Random alternatives
     var randomIndex = Int.random(in: 0..<questions.count)
     while usedQuestionIndexes.contains(randomIndex) {
     randomIndex = Int.random(in: 0..<questions.count)
     }
     usedQuestionIndexes.append(randomIndex)
     return questions[randomIndex]
     }*/
    
    var currentQuestion: Questions {
        shuffledQuestions[currentQuestionIndex]
    }
    func checkAnswer(_ answerIndex: Int) -> Bool {//CHAMADA OK
        print(currentQuestion.alternatives[answerIndex])
        print("Alternativa respondida: \(answerIndex)")
        let answer = currentQuestion.alternatives[answerIndex]
        print("Alternativa Correta: \(currentQuestionIndex)")
        if answer.correct {
            score += 1
            print(answer.correct)
        }
        
        return answer.correct
    }
    
    func nextQuestion() {//Chamada OK
        withAnimation(.easeInOut){
            if currentQuestionIndex < questions.count - 1 {
                currentQuestionIndex += 1
                print(currentQuestion)
            }
        }
    }
    
    func endGame() {
        showSheet.toggle()
    }

}


