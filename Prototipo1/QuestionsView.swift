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
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("color1"), Color("color2")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text(questions[0].question)
                    .multilineTextAlignment(.center)
                    .frame(height: 110)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .padding()
                
                Button("a) Tolkien"){}
                    .buttonStyleQuestions()
                Button("b) Boninho"){}
                    .buttonStyleQuestions()
                Button("c) Emílio Surita"){}
                    .buttonStyleQuestions()
                Button("d) Clarice Lispector"){}
                    .buttonStyleQuestions()
                Button("e) BRKs Edu"){}
                    .buttonStyleQuestions()
                
                Text("Score: 0")
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
