//
//  GuessingGameView.swift
//  GuessingGame
//
//  Created by Luke Newbigging on 2021-12-02.
//

import SwiftUI

struct GuessingGameView: View {
    //MARK: Stored Properties
    // Current Guess of the user
    @State var currentGuess: Double = 50.0
    
    
    //MARK: Computer Properties
    var body: some View {
        ScrollView{
            VStack{
                
            
                Label("PLay The Guessing Game!", systemImage: "gamecontroller")
                
                Slider(value: $currentGuess,
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
                Text("Your Guess")
                
                Text("\(String(format: "%.0f", currentGuess))")
                    .bold()
                    .font(.title2)
                    .padding(10)
                
                
                Button(action: {
                    print("Button was pressed")
                }, label: {
                    Text("Submit Guess")
                })
                    .buttonStyle(.bordered)
            
            
            
            
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
