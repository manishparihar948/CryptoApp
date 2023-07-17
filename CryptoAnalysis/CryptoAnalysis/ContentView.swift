//
//  ContentView.swift
//  CryptoAnalysis
//
//  Created by Manish Parihar on 17.07.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            VStack (spacing:40){
                Text("Hello, world!")
                    .foregroundColor(Color.theme.accent)
                
                Text("Hello, world!")
                    .foregroundColor(Color.theme.secondaryText)
                
                Text("Hello, world!")
                    .foregroundColor(Color.theme.red)
                
                Text("Hello, world!")
                    .foregroundColor(Color.theme.green)
            }
            .font(.headline)
           
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
