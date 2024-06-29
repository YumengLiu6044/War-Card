//
//  ContentView.swift
//  War Card
//
//  Created by Yumeng Liu on 6/29/24.
//

import SwiftUI

struct ContentView: View {
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
                    Image("back")
                    Spacer()
                        .frame(width: 50.0)
                    Image("back")
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
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                        .frame(width: 100.0)
                    VStack{
                        Text("CPU")
                            .padding(.bottom, 10)
                        Text("0")
                            .font(.largeTitle)
                    }
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.008, brightness: 0.987)/*@END_MENU_TOKEN@*/)
            }
        }
    }
    
    func dealCards() {
        print("Deal")
    }
}

#Preview {
    ContentView()
}
