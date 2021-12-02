//
//  GuessingGameView.swift
//  GuessingGame
//
//  Created by Luke Newbigging on 2021-12-02.
//

import SwiftUI

struct GuessingGameView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Play The Guessing Game!")
            
                
                
                Slider(value: .constant(50.0),
                       in: 0.0...100.0,
                       label: {
                    Text("Opacity")
                },
                       minimumValueLabel: {
                    Text("0")
                },
                       maximumValueLabel: {
                    Text("100")
                })
                    .padding(10)
                
                Text("50")
                    .bold()
                    .font(.title2)
                    .padding(10)
                Button(action: {
                    
                    print("Button was pressed")
                }, label: {
                    Text("Submit Guess")
                })
                                
            
            
            
            
            }
            .navigationTitle("Guessing Game")
        }
        
    }
    
}






struct GuessingGameView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            GuessingGameView()
        }
    }
}
