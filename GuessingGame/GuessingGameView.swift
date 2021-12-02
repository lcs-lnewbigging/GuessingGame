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
    
    //The  Target that we are trying to guess
    //Will produce an interger in the range 1 to 100
    let target = Int.random(in: 1...100)
    
    //The Feed back to thte user as they play
    
    @State var feedback = ""  // No Hint to start the game
    
    //MARK: Computer Properties
    var body: some View {
        ScrollView{
            VStack{
                
            
                Label("PLay The Guessing Game!", systemImage: "gamecontroller")
                    .padding(20)
               
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
                
                Text("Your Guess:")
                    .bold()
                
                Text("\(String(format: "%.0f", currentGuess))")
                    .bold()
                    .font(.title2)
                    .padding(10)
                
                
                Button(action: {
                    
                    // Male the users guess into an interger
                    let currentGuessAsInterger = Int(currentGuess)
                    
                    //compare the user's current guess to the target
                    if currentGuessAsInterger < target{
                        //Guess Higher
                    feedback = "Guess higher next time!"
                    }else if currentGuessAsInterger > target{
                        feedback = " Guess lower next time!"
                    }else {
                        feedback = " You Got It!!"
                    }
                    
                    
                    
                    
                }, label: {
                    Text("Submit Guess")
                })
                    .buttonStyle(.borderedProminent)
                    
            Text("The Target is \(target)")
                    .padding(10)
            
                Text(feedback)
                    .italic()
                    .padding()
            
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
