//
//  ButtonStyleQuestions.swift
//  Prototipo1
//
//  Created by Vinicius Cabral on 05/05/23.
//

import SwiftUI

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
