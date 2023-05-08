//
//  QuestionLineComponent.swift
//  Prototipo1
//
//  Created by Vinicius Cabral on 07/05/23.
//

//Primeiro Componente

import SwiftUI
import AVFoundation // Sound

struct AnwserView: View {
    
    @ObservedObject var questionsViewModel : QuestionViewModel
    


    var index : Int
    
    var body: some View {
            ZStack {
                    // Flip just the tapped button
                if questionsViewModel.flipIndex == index {
                    Text("\(index+1)) \(questionsViewModel.currentQuestion.alternatives[index].text)")
                            .buttonStyleQuestions()
                            .background(questionsViewModel.anwserColor)
                            .cornerRadius(12)
                            .rotation3DEffect(.degrees(questionsViewModel.animationAmount), axis: (x: 0, y: 1, z: 0))
                    } else {
                        Text("\(index+1)) \(questionsViewModel.currentQuestion.alternatives[index].text)")
                            .buttonStyleQuestions()
                            .background(Color("color1"))
                            .cornerRadius(12)
                    }
            }
    }
}



struct QuestionsLineComponent_Previews: PreviewProvider {
    
    static var questionViewModel : QuestionViewModel = .init()
    
    static var previews: some View {
        // Binding connection
        AnwserView(questionsViewModel: questionViewModel, index: 1).previewLayout(.fixed(width: 400, height: 100)).environmentObject(QuestionViewModel())//Passagem de parametro e injeção de dependencia da classe questions
    }
}
