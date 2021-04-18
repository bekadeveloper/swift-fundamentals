//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 18/04/21.
//

import SwiftUI

struct ContentView: View {
//    private var colors: [Color] = [.blue, .orange, .red]
    private var gridItems: [GridItem] = [GridItem(.adaptive(minimum: 100))]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItems, spacing: 5) {
                ForEach(0...99, id: \.self) { index in
                    CellContent(index: index, color: .gray)
                }
            }
            .padding()
        }
    }
}

struct CellContent: View {
    var index: Int
    var color: Color
    
    var body: some View {
        Text("\(index)")
            .frame(minWidth: 100, minHeight: 100, maxHeight: .infinity)
            .background(color)
            .cornerRadius(10.0)
            .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
