//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 22/04/21.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            
            Group {
                Text("Linear Style").font(.headline)
                ProgressView(value: progress, total: 100)
                    .progressViewStyle(LinearProgressViewStyle(tint: .yellow))
            }
            
            Group {
                Text("Circular Style").font(.headline)
                ProgressView(value: progress, total: 100)
                    .progressViewStyle(CircularProgressViewStyle())
                // ! Bug in iOS 14 causes the circular style to appear using the indeterminate style
            }
            
            Group {
                Text("Indeterminate Style").font(.headline)
                ProgressView()
            }
            
            Slider(value: $progress, in: 0...100, step: 0.1).accentColor(.gray)
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
