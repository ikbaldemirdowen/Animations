//
//  ContentView.swift
//  Animations
//
//  Created by Ikbal Demirdoven on 2023-01-21.
//

import SwiftUI

struct ContentView: View {
    @State private var letters = Array("Hello SwiftUI") //this makes letters from the text string
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View
    {
        VStack
        {
            Text("Hello SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
