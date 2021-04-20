//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 20/04/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            Text("First Content View")
                .tabItem {
                    Label("Screen One", systemImage: "1.square")
                }
                .tag(1)
            Text("Second Content View")
                .tabItem {
                    Label("Screen Two", systemImage: "2.square")
                }
                .tag(2)
            Text("Third Content View")
                .tabItem {
                    Label("Screen Three", systemImage: "3.square")
                }
                .tag(3)
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
