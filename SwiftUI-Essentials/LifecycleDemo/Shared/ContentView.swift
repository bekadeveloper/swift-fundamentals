//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 12/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FirstTabView()
                .tabItem {
                    Image(systemName: "01.circle")
                    Text("First")
                }
            
            SecondTabView()
                .tabItem {
                    Image(systemName: "02.circle")
                    Text("Second")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
