//
//  ContentView.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 24/04/23.
//

import SwiftUI
// Sound
import AVFoundation

// Button style
struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 270)
            .padding(12)
            .font(.custom("Bangers-Regular", size: 30))
            .background(Color("color5"))
            .foregroundColor(Color("color4"))
            .cornerRadius(12)
            .shadow(color: .black, radius: 3)
    }
}

extension View {
    func buttonStyle() -> some View {
        modifier(ButtonStyle())
    }
}

struct ContentView: View {
    
    // Sound
    var player :  AVAudioPlayer!
    @State var isMusicOn = false
    init() {
        isMusicOn ? playSound(sound: "top-gear", type: "mp3") : audioPlayer?.stop()
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("color1"), Color("color2")]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                Image("geek")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 530, height: 530)
                    .padding(.top, -440)
                
                VStack {
                    Image("img")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320, height: 320)
                        .shadow(color: .black, radius: 10)
                        .padding(.top, 90)
                    
                    VStack(spacing: 20) {
                        NavigationLink {
                            // Binding connection betwen screens
                            QuestionsView(isMusicOn: $isMusicOn)
                        } label: {
                            Text("I n i c i a r ")
                                .buttonStyle()
                        }
                        
                        NavigationLink {
                            AboutView(isMusicOn: $isMusicOn)
                        } label: {
                            Text("S o b r e ")
                                .buttonStyle()
                        }
                    }
                }
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
