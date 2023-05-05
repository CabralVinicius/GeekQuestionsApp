//
//  QuestionsView.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 25/04/23.
//

import SwiftUI
// Sound
import AVFoundation

// Button style
struct ButtonStyleQuestions: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 270, height: 45, alignment: .leading)
            .padding()
            .font(.custom("Bangers-Regular", size: 27))
            .foregroundColor(Color("color4"))
    }
}

extension View {
    func buttonStyleQuestions() -> some View {
        modifier(ButtonStyleQuestions())
    }
}

struct QuestionsView: View {
    
    // Button flip animation
    @State private var animationAmount = 0.0
    @State private var flipIndex = -1
    @State private var anwserColor = Color("color4")
    
    // // Binding connection between screens
    @Binding var isMusicOn: Bool
    
    // Questions logic
    @State private var currentQuestionIndex = 0
    @State private var score = 0
    
    private var currentQuestion: Questions {
        questions[currentQuestionIndex]
    }
    
    private func checkAnswer(_ answerIndex: Int) -> Bool {
        withAnimation(.easeInOut){
            let answer = currentQuestion.alternatives[answerIndex]
            if answer.correct {
                score += 1
            }
            return answer.correct
        }
    }
    private func nextQuestion() {
        withAnimation(.easeInOut){
            if currentQuestionIndex < questions.count - 1 {
                currentQuestionIndex += 1
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("color1"), Color("color2")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                
                VStack(spacing: 10) {
                    Text(currentQuestion.question)
                        .multilineTextAlignment(.center)
                        .frame(height: 110)
                        .foregroundColor(Color("color4"))
                        .font(.custom("ChakraPetch-Medium", size: 22))
                        .padding(.top, 10)
                    
                    ForEach(currentQuestion.alternatives.indices, id: \.self) { index in
                        Button(action: {
                            // Animation logic
                            let result = checkAnswer(index)
                            flipIndex = index
                            anwserColor = result == true ? Color("correctAnswer") : Color("wrongAnswer")
                            withAnimation {
                                animationAmount += 360
                                // Return to original color after flipping
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    anwserColor = Color("color1")
                                    nextQuestion()
                                }
                            }
                        }) {
                            // Flip just the tapped button
                            if flipIndex == index {
                                Text("\(index+1)) \(currentQuestion.alternatives[index].text)")
                                    .buttonStyleQuestions()
                                    .background(anwserColor)
                                    .cornerRadius(12)
                                    .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
                            } else {
                                Text("\(index+1)) \(currentQuestion.alternatives[index].text)")
                                    .buttonStyleQuestions()
                                    .background(Color("color1"))
                                    .cornerRadius(12)
                            }
                        }
                        .shadow(color: .white, radius: 3)
                    }
                    
                    // Different number color
                    (Text("Score: ")
                        .foregroundColor(Color("color4")) +
                    Text("\(score)")
                        .foregroundColor(.green))
                    .font(.custom("ChakraPetch-Medium", size: 33))
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()
                    .padding(.bottom, 35)
                }
                .padding(.top, 30)
            }
            
            // Sound options (on/off)
            .toolbar {
                  ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                            if isMusicOn == true {
                                audioPlayer?.pause()
                            } else {
                                audioPlayer?.play()
                            }
                            isMusicOn.toggle()
                        } label: {
                            Text("Music")
                            Label("Play", systemImage: isMusicOn ? "pause.circle" : "play.circle")
                        }
                  }
            }
        }
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        // Binding connection
        QuestionsView(isMusicOn: .constant(true))
    }
}
