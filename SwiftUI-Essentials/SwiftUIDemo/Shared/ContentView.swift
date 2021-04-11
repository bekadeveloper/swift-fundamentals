//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 11/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Double = 0.0
    @State private var text: String = ""
    @State private var colorName: String = "Black"
    
    var body: some View {
        VStack {
            Spacer()

            Label(text, systemImage: "swift")
                .font(.largeTitle)
                .foregroundColor(colorDict[colorName])
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut(duration: 1))
            
            Spacer()
            
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Slider(value: $rotation, in: 0...360)
            
            Picker(selection: $colorName, label: Text("Color")) {
                ForEach(colornames, id: \.self) { name in
                    Text(name)
                        .foregroundColor(colorDict[name])
//                        .tag(name)
                }
            }
        }
        .padding()
    }
}

var colornames: [String] = ["Black", "Blue", "Gray", "Orange", "Red"]
var colors: [Color] = [.black, .blue, .gray, .orange, .red]

var colorDict: [String: Color] = Dictionary(uniqueKeysWithValues: zip(colornames, colors))

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
