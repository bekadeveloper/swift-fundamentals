//
//  LifecycleDemoApp.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 12/04/21.
//

import SwiftUI

@main
struct LifecycleDemoApp: App {
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase, perform: { scene in
            switch scene {
                case .active :
                    print("Active")
                case .inactive:
                    print("Inactive")
                case .background:
                    print("Background")
                default:
                    print("Unknown scenephase")
            }
        })
    }
}
