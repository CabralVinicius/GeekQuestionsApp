//
//  QuestionsView.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 25/04/23.
//

import SwiftUI
import AVFoundation // Sound

struct QuestionScreen: View {
    @StateObject var questionViewModel: QuestionViewModel = .init()
    
    let shuffledQuestions = questions.shuffled()
    
    @Binding var isMusicOn: Bool // Binding connection between screens
    
    // Questions logi
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("color1"), Color("color2")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                
                VStack(spacing: 10) {
                    QuestionView()
                    
                    // Different number color
                    (Text("Score: ")
                        .foregroundColor(Color("color4")) +
                     Text("\(questionViewModel.score)")
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
                            .font(.custom("ChakraPetch-Medium", size: 20))
                        Label("Play", systemImage: isMusicOn ? "pause.circle.fill" : "play.circle.fill")
                    }
                }
            }
            
            // End game sheet
            .sheet(isPresented: $questionViewModel.showSheet) {
                ZStack {
                    Color("color1")
                    
                    VStack {
                        ResultingGame(isMusicOn: $isMusicOn)
                    }
                }
            }.environmentObject(questionViewModel)
        }
    }
}
// End game function


struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        // Binding connection
        QuestionScreen(isMusicOn: .constant(true)).environmentObject(QuestionViewModel())
    }
}


