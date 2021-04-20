//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 20/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var foregroundColor: Color = Color.black
    @State private var backgroundColor: Color = Color.white
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 7)
                .frame(width: 175, height: 50)
                .foregroundColor(backgroundColor)
            Text("Hello, world!")
                .font(.title)
                .foregroundColor(foregroundColor)
        }
        .contextMenu {
            Button(action: {
                foregroundColor = .black
                backgroundColor = .white
            }) {
                Label("Normal Colors", systemImage: "paintbrush")
            }
            
            Button(action: {
                foregroundColor = .white
                backgroundColor = .black
            }) {
                Label("Inversed Colors", systemImage: "paintbrush.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
