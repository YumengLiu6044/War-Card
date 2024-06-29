//
//  ContentView.swift
//  War Card
//
//  Created by Yumeng Liu on 6/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .ignoresSafeArea()
            VStack{
//                logo
                Image("logo")
                    .padding(.bottom, 50.0)
                
//                Hstack of cards
                HStack{
                    Image(playerCard)
                    Spacer()
                        .frame(width: 50.0)
                    Image(cpuCard)
                }
                    .padding(.bottom, 50.0)
                
//                Deal button
                Button() {
                    dealCards()
                } label: {
                    Image("button")
                }
                
                    .padding(.bottom, 50.0)
                
//                Hstack of score
                HStack{
                    VStack{
                        Text("Player")
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                        .frame(width: 100.0)
                    VStack{
                        Text("CPU")
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.008, brightness: 0.987)/*@END_MENU_TOKEN@*/)
            }
        }
    }
    
    func randomCard () -> String
    {
        return String(Int.random(in: 2...14))
    }
    
    func updateScore ()
    {
        if (playerCard > cpuCard)
        {
            playerScore += 1
        }
        else if (cpuCard > playerCard)
        {
            cpuScore += 1
        }
        else
        {
            // Tie
        }
    }
    
    func dealCards() {
        // Randomizes the player's card
        playerCard = "card" + randomCard()
        
        // Randomizes the CPU's card
        cpuCard = "card" + randomCard()
        
        updateScore()
    }
    
    
}

#Preview {
    ContentView()
}
