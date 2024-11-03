//
//  Game1View.swift
//  Card Game Galore
//
//  Created by Anagha Naga Krishna on 11/2/24.
//

import SwiftUI

struct Game4View: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo-war")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    VStack {
                        Text(String("CPU"))
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
            }
        }
    }
        func deal() {
            let playerCardValue = Int.random(in: 1...13)
            let cpuCardValue = Int.random(in: 1...13)
            
            playerCard = "card" + String(playerCardValue)
            cpuCard = "card" + String(cpuCardValue)
            
            if playerCardValue > cpuCardValue {
                playerScore += 1
            }
            else if playerCardValue == cpuCardValue {
                playerScore += 1
                cpuScore += 1
            }
            else {
                cpuScore += 1
            }
            
        }
}

#Preview {
    Game4View()
}
