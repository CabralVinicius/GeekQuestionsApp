//
//  QuestionsView.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 25/04/23.
//

import SwiftUI

struct ButtonStyleQuestions: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 250, alignment: .leading)
            .font(.system(size: 27).weight(.light))
            .padding(10)
            .background(Color("color4"))
            .foregroundColor(.white)
            .cornerRadius(8)
            .shadow(color: .black,radius: 5)
    }
}

extension View {
    func buttonStyleQuestions() -> some View {
        modifier(ButtonStyleQuestions())
    }
}

struct QuestionsView: View {
    @State private var currentQuestionIndex = 0
    @State private var score = 0
    
    private var currentQuestion: Questions {
        questions[currentQuestionIndex]
    }
    
    private func checkAnswer(_ answerIndex: Int) {
        let answer = currentQuestion.alternatives[answerIndex]
        if answer.correct {
            score += 1
        }
        
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        }
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("color1"), Color("color2")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text(currentQuestion.question)
                    .multilineTextAlignment(.center)
                    .frame(height: 110)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .padding()
                
                ForEach(currentQuestion.alternatives.indices) { index in
                    Button("\(index+1)) \(currentQuestion.alternatives[index].text)") {
                        checkAnswer(index)
                    }
                    .buttonStyleQuestions()
                }
                
                Text("Score: \(score)")
                    .foregroundColor(Color("color1"))
                    .font(.system(size: 30))
                    .padding()
            }
        }
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView()
    }
}
