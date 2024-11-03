//
//  Game4View.swift
//  Card Game Galore
//
//  Created by Anagha Naga Krishna on 11/2/24.
//

import SwiftUI

struct Game1View: View {
    
    @State private var guessResult = ""
    @State private var score = 1000
    @State private var nextCard = "card6"
    
    var body: some View {
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            VStack {
                
                Spacer()
                
                Image("logo-hi-lo")
                    .resizable()
                    .frame(width: 330, height: 200)
                
                Image(nextCard)
                
                Spacer()
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        generateNextCardAndValidateGuess(playerGuess: "higher", curCard: nextCard)
                    }) {
                        Image(systemName: "arrowshape.up.fill")
                            .resizable()
                            .frame(width: 60, height: 70)
                            .foregroundColor(.green)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        generateNextCardAndValidateGuess(playerGuess: "lower", curCard: nextCard)
                    }) {
                        Image(systemName: "arrowshape.down.fill")
                            .resizable()
                            .frame(width: 60, height: 70)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.617, brightness: 0.988))
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                Text("You are ... \(guessResult)")
                    .font(.title2)
                    .padding()
                
                Spacer()
                
                Text("Score: \(score)")
                    .font(.title)
                    .padding()
                
                Spacer()
            }.foregroundColor(.white)
        }
        
    }
    
    func generateNextCardAndValidateGuess(playerGuess: String, curCard: String) {
        let nextCardVal = Int.random(in: 1...10)
        
        nextCard = "card\(nextCardVal)"
        
        if let lastChar = curCard.last, let curCardVal = Int(String(lastChar)) {
            let answer = nextCardVal > curCardVal ? "higher" : "lower"
            
            if playerGuess == answer {
                guessResult = "CORRECT!"
                score += 100
            } else {
                guessResult = "INCORRECT!"
                score -= 100
            }
        } else {
            print("Error: Could not extract a valid number from curCard.")
        }
    }
}

#Preview {
    Game1View()
}
