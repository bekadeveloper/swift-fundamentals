//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 17/04/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Label("Cars", systemImage: "car.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
