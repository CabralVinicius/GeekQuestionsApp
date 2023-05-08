//
//  QuestionComponent.swift
//  Prototipo1
//
//  Created by Vinicius Cabral on 07/05/23.
//

//Segundo componente

import SwiftUI
import AVFoundation // Sound

struct QuestionView: View {
    
    @EnvironmentObject var questionViewModel : QuestionViewModel// = .init()
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                //Color(.blue)
                
                VStack(spacing: 10) {
                    Text(questionViewModel.currentQuestion.question)
                        .multilineTextAlignment(.center)
                        .frame(height: 110)
                        .foregroundColor(Color("color4"))
                        .font(.custom("ChakraPetch-Medium", size: 22))
                        .padding(.top, 10)
                    
                    ForEach(questionViewModel.currentQuestion.alternatives.indices, id: \.self) { index in
                        Button(action: {
                            questionViewModel.questionCounter += 1
                            // Repeat just 15 questions
                            if questionViewModel.questionCounter <= 5 {
                                // Animation logic
                                let result = questionViewModel.checkAnswer(index)
                                questionViewModel.flipIndex = index
                                questionViewModel.anwserColor = result == true ? Color("correctAnswer") : Color("wrongAnswer")
                                withAnimation {
                                    questionViewModel.animationAmount += 360
                                    questionViewModel.answered = true
                                    // Return to original color after flipping
                                    print(Thread.isMainThread)
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                                        questionViewModel.answered = false
                                        questionViewModel.anwserColor = Color("color1")
                                        questionViewModel.nextQuestion()
                                    }
                                }
                            } else {
                                questionViewModel.endGame()
                                
                                
                            }
                            print("proximo")
                        }) {
                            // Flip just the tapped button
                            AnwserView(questionsViewModel: questionViewModel, index: index)
                        }
                        .shadow(color: .white, radius: 3)
                        .disabled(questionViewModel.answered)


                    }
                }
                
            }
            .padding(.top, 30)
            //.environmentObject(questionsViewModel)//
        }
    }
}



struct QuestionsComponent_Previews: PreviewProvider {
    static var previews: some View {
        // Binding connection
        QuestionView().previewLayout(.fixed(width: 400, height: 600)).environmentObject(QuestionViewModel())
    }
}


