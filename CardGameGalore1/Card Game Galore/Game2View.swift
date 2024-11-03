//
//  Game2View.swift
//  Card Game Galore
//
//  Created by Anagha Naga Krishna on 11/2/24.
//

import SwiftUI

struct Game2View: View {
    
    @State var score = 0
    @State var card1 = "back"
    @State var card2 = "back"
    @State var card3 = "back"
    @State var message = ""
    
    var body: some View {
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            VStack {
                
                Image("logo-slots")
                    .resizable()
                    .frame(width: 300, height: 220)
                
                HStack {
                    Spacer()
                    Image(card1)
                    Spacer()
                    Image(card2)
                    Spacer()
                    Image(card3)
                    Spacer()

                }.padding()
                
                Spacer()
                Spacer()
                
                Button {
                    slotDeal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                
                VStack {
                    Text(message)
                    Text("Score: \(score)")
                        .font(.title)
                        .padding()
                }
                
                Spacer()
            }.foregroundColor(.white)
        }
        
    }
    
    func slotDeal() {
        let card1Val = Int.random(in: 1...10)
        let card2Val = Int.random(in: 1...10)
        let card3Val = Int.random(in: 1...10)
        
        card1 = "card" + String(card1Val)
        card2 = "card" + String(card2Val)
        card3 = "card" + String(card3Val)
        
        if card1Val % 2 == 0 && card2Val % 2 == 0 && card3Val % 2 == 0 {
            message = "YOU WIN!"
            score += 1000
        }
        else if card1Val % 2 != 0 && card2Val % 2 != 0 && card3Val % 2 != 0 {
            message = "YOU WIN!"
            score += 1000
        }
        else {
            message = ""
        }
    }
    
}

#Preview {
    Game2View()
}
