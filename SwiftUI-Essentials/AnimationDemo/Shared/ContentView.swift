//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 21/04/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isSpinning: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 2.5)
                .foregroundColor(.blue)
            
            Image(systemName: "forward.fill")
                .font(.title)
                .offset(y: -170)
                .rotationEffect(.degrees(isSpinning ? 360 : 0))
                .animation(Animation.linear(duration: 3).repeatForever(autoreverses: false))
        }
        .padding()
        .onAppear {
            isSpinning.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
