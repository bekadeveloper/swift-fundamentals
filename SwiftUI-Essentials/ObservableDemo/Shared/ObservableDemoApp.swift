//
//  ObservableDemoApp.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 12/04/21.
//

import SwiftUI

@main
struct ObservableDemoApp: App {
    let timerData = TimerData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(timerData)
        }
    }
}
