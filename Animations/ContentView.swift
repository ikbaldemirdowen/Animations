//
//  ContentView.swift
//  Animations
//
//  Created by Ikbal Demirdoven on 2023-01-21.
//

import SwiftUI

struct ContentView: View {
    @State private var dragAmount = CGSize.zero
    
    var body: some View
    {
        VStack
        {
            LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            
        }
        .frame(width: 200, height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .offset(dragAmount)
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded( {_ in dragAmount = .zero } )
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
