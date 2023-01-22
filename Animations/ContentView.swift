//
//  ContentView.swift
//  Animations
//
//  Created by Ikbal Demirdoven on 2023-01-21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Button("Tap me")
            {
                
            }
            .padding(50)
            .background(.white)
            .foregroundColor(.black)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount)
                    .opacity(1)
                    .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: animationAmount))
            .onAppear
            {
                animationAmount = 2
            }
                    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
