//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 14/04/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            SceneStorageView()
                .tabItem {
                    Label("Scene Storage", systemImage: "circle.fill")
                }
            
            AppStorageView()
                .tabItem {
                    Label("App Storage", systemImage: "square.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 mini")
    }
}
