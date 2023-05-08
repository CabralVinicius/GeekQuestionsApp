//
//  ResultingGame.swift
//  Prototipo1
//
//  Created by Vinicius Cabral on 07/05/23.
//

import SwiftUI

struct ResultingGame: View {
    
    @EnvironmentObject var questionViewModel : QuestionViewModel
    @Binding var isMusicOn : Bool
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("color1"), Color("color2")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack {
                (Text("Você acertou")
                    .foregroundColor(Color("color4")) +
                 Text("  \(questionViewModel.score)  ")
                    .foregroundColor(.green) +
                 Text("das 15 perguntas "))
                .foregroundColor(Color("color4"))
                .padding(.top, 30)
                .font(.custom("Bangers-Regular", size: 40))
                .multilineTextAlignment(.center)
                .frame(width: 250)
                
                Image("robot")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 320, height: 320)
                
                HStack {
                    Button("Restart ") {
                        questionViewModel.score = 0
                        questionViewModel.questionCounter = 0
                        questionViewModel.showSheet.toggle()
                    }
                    .buttonStyleSheet()
                    
                    Spacer()
                    
                    
                    NavigationLink {
                        AboutView(isMusicOn: $isMusicOn)
                    } label: {
                        Text("Sair ")
                            .buttonStyleSheet()
                    }
                }
            }
        }
    }
}


struct ResultingGame_Previews: PreviewProvider {
    static var previews: some View {
        
        
        ResultingGame(isMusicOn: .constant(false)).environmentObject(QuestionViewModel())
    }
}

