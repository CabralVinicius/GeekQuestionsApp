//
//  RulesView.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 25/04/23.
//

import SwiftUI

struct RulesView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("color1"), Color("color2")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack {
                Text("Regras")
                    .font(.system(size: 80).weight(.ultraLight))
                    .foregroundColor(Color("color2"))
                    .padding()
                
                Text("Através de 15 perguntas aleatórias, de diferentes níveis de dificuldade, você testará seu conhecimento do universo Geek. Dependendo da sua pontuação ao final do Quiz, você poderá se enquadrar em uma dos 3 níveis Geek:")
                    .font(.system(size: 20))
                
                Group {
                    Text("⚪️ Geek Junior")
                    Text("⚪️ Geek Pleno")
                    Text("⚪️ Geek Senior")
                }
                .font(.system(size: 40).weight(.light))
                .foregroundColor(Color("color1"))
                .padding(.top, 40)
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        RulesView()
    }
}
