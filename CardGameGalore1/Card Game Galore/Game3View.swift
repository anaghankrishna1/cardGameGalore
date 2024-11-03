//
//  Game3View.swift
//  Card Game Galore
//
//  Created by Anagha Naga Krishna on 11/2/24.
//

import SwiftUI

struct Game3View: View {
    
    @State var card1 = "back"
    @State var card2 = "back"
    @State var sum = 0
    
    var body: some View {
        ZStack {
            Image("background-cloth").resizable().ignoresSafeArea()
                    VStack {
                        Spacer()
                        Spacer()
                        Image("logo-roll").resizable().frame(width: 240, height: 160)
                        Spacer()
                        HStack {
                            Spacer()
                            Image(card1)
                            Spacer()
                            Image(card2)
                            Spacer()
                        }
                        Spacer()
                        Spacer()
                        Spacer()
                        Button {
                            roll()
                        } label: {
                            Image("button")
                        }
        
                        Spacer()
                        HStack {
                            Text("You rolled ... ")
                            Text(String(sum))
                        }.font(.title).fontWeight(.semibold)
                        Spacer()
                        Spacer()
                        Spacer()
                    }.foregroundColor(.white)
                }
    }
    func roll(){
        let card1Val = Int.random(in: 1...6)
        let card2Val = Int.random(in: 1...6)
        
        card1 = "card" + String(card1Val)
        card2 = "card" + String(card2Val)
        
        sum = card1Val + card2Val
        
    }
}

#Preview {
    Game3View()
}
