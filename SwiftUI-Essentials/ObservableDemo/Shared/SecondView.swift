//
//  SecondView.swift
//  ObservableDemo
//
//  Created by Begzod Bakhriddinov on 12/04/21.
//

import SwiftUI

struct SecondView: View {
    @StateObject var timerData: TimerData
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer count: \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(timerData: TimerData())
    }
}
