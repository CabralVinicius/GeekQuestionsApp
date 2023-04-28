//
//  ContentView.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 24/04/23.
//

import SwiftUI

struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 300)
            .padding(8)
            .font(.custom("Bangers-Regular", size: 33))
//            .background(Color("color4"))
            .background(LinearGradient(gradient: Gradient(colors: [Color("color5"), Color("color1")]), startPoint: .bottom, endPoint: .top))
            .foregroundColor(Color("color2"))
            .shadow(color: .black, radius: 2)
            .cornerRadius(13)
            .shadow(color: .black,radius: 5)
    }
}

extension View {
    func buttonStyle() -> some View {
        modifier(ButtonStyle())
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("color1"), Color("color2")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                
                Image("geek")
                    .padding(.top, -450)
                
                VStack {
                    Image("img")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 350)
                        .shadow(color: .black,radius: 15)
                    
                    VStack(spacing: 25) {
                    
                        NavigationLink {
                            QuestionsView()
                        } label: {
                            Text("Iniciar Quiz")
                                .buttonStyle()
                        }

                        Button("Pontuação") {}
                            .buttonStyle()
                        
                        NavigationLink {
                            RulesView()
                        } label: {
                            Text("Regras")
                                .buttonStyle()
                        }
                    }
                }
                .padding(.top, 160)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
