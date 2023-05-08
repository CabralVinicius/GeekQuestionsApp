//
//  Styles.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 06/05/23.
//

import SwiftUI

// MARK: - QuestionView button style
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

// MARK: - ContentView button style
struct ButtonStyleMain: ViewModifier {
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
    func buttonStyleMain() -> some View {
        modifier(ButtonStyleMain())
    }
}

// MARK: - Sheet button style
struct ButtonStyleSheet: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 150, height: 60)
            .font(.custom("Bangers-Regular", size: 30))
            .foregroundColor(Color("color4"))
            .background(Color("color2"))
            .cornerRadius(10)
            .shadow(color: .white, radius: 3)
            .padding()
    }
}

extension View {
    func buttonStyleSheet() -> some View {
        modifier(ButtonStyleSheet())
    }
}

    
