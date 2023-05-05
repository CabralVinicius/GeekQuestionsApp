//
//  RulesView.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 25/04/23.
//

import SwiftUI
// Sound
import AVFoundation

struct AboutView: View {
    
    // Binding connection betwen screens
    @Binding var isMusicOn: Bool
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("color1"), Color("color2")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                
                VStack {
                    Text("Sobre ")
                        .font(.custom("Bangers-Regular", size: 60))
                        .foregroundColor(Color("color2"))
                        .padding()
                        
                    Text("Teste seu conhecimento sobre o universo geek através de um Quiz com diversas perguntas do mundo dos games, filmes, series, animes e muito mais.")
                        .font(.custom("ChakraPetch-Medium", size: 22))
                        .multilineTextAlignment(.center)
                    
                    Image("cat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                }
                .foregroundColor(.white)
                .padding(.horizontal, 20)
                .padding(.bottom, 30)
            }
            
            // Sound options (on/off)
            .toolbar {
                  ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                            if isMusicOn == false {
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

struct About_Previews: PreviewProvider {
    static var previews: some View {
        // Binding connection
        AboutView(isMusicOn: .constant(true))
    }
}
