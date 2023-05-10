//
//  Styles.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 06/05/23.
//

import SwiftUI

// MARK: - ContentView button style
struct ButtonStyleMain: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 270)
            .padding(12)
            .font(.custom("Righteous-Regular", size: 30))
            .background(Color("color4"))
            .foregroundColor(Color("color3"))
            .cornerRadius(12)
            .shadow(color: .black, radius: 3)
    }
}

extension View {
    func buttonStyleMain() -> some View {
        modifier(ButtonStyleMain())
    }
}

// MARK: - QuestionView button style
struct ButtonStyleQuestions: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 270, height: 35, alignment: .leading)
            .padding()
            .font(.custom("Righteous-Regular", size: 20))
            .foregroundColor(Color("color3"))
    }
}

extension View {
    func buttonStyleQuestions() -> some View {
        modifier(ButtonStyleQuestions())
    }
}

// MARK: - Sheet button style
struct ButtonStyleSheet: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 150, height: 60)
            .font(.custom("Righteous-Regular", size: 30))
            .foregroundColor(Color("color3"))
            .background(Color("color2"))
            .cornerRadius(10)
            .shadow(color: .black, radius: 3)
            .padding()
    }
}

extension View {
    func buttonStyleSheet() -> some View {
        modifier(ButtonStyleSheet())
    }
}

    
