//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 12/04/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var timerData: TimerData = TimerData()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                Text("Timer count: \(timerData.timeCount)")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                Button(action: resetCount) {
                    Text("Reset Counter")
                }
                
                NavigationLink(destination: SecondView(timerData: timerData)) {
                    Text("Next Screen")
                }
            }
        }
    }
    
    func resetCount() {
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
