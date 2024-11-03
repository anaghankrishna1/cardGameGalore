//
//  ContentView.swift
//  Card Game Galore
//
//  Created by Anagha Naga Krishna on 11/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            
            VStack {
                Image("main-logo").resizable().scaledToFill().frame(width: UIScreen.main.bounds.width, height: 180).clipped().padding()
                Text("Click on any of the four logos below to start").fontWeight(.bold)
                HStack {
                    VStack {
                        NavigationLink(destination: Game1View()){
                            Image("logo-hi-lo").resizable().frame(width: 200, height: 180)
                        }
                        Text("Guess if the next card is higher or lower!")
                    }
                    Spacer()
                    VStack {
                        NavigationLink(destination: Game2View()){
                            Image("logo-slots").resizable().frame(width: 200, height: 180)
                        }
                        Text("Get three odds or evens to win!")
                    }
                }
                Spacer()

                HStack {
                    VStack {
                        NavigationLink(destination: Game3View()){
                            Image("logo-roll").resizable().frame(width: 200, height: 130)
                        }
                        Text("Roll dice or roll cards?")
                    }
                    Spacer()
                    VStack {
                        NavigationLink(destination: Game4View()){
                            Image("logo-war").resizable().frame(width: 150, height: 130)
                        }
                        Text("Try to beat the computer")
                    }
                }
                Spacer()

            }.background(Image("background-cloth")).foregroundColor(.white).padding()
        }.tint(.white)
    }
}

#Preview {
    ContentView()
}
