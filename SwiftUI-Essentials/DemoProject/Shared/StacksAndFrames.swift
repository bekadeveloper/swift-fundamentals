//
//  StacksAndFrames.swift
//  DemoProject
//
//  Created by Begzod Bakhriddinov on 10/04/21.
//

import SwiftUI

struct StacksAndFrames: View {
    var body: some View {
        
        // first preview
        VStack(alignment: .center, spacing: 15) {
            Text("Financial Results")
                .font(.title)
            
            HStack(alignment: .top) {
                Text("Q1 Sales")
                    .font(.headline)
                Spacer()
                VStack(alignment: .leading) {
                    Text("January")
                    Text("February")
                    Text("March")
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("$1000")
                    Text("$200")
                    Text("$3000")
                }
            }
            .padding()
        }
        .padding()
        
        // second preview
        HStack {
            Image(systemName: "airplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Text("Flight Times:")
            Text("London")
                .layoutPriority(1)
        }
        .font(.title)
        .lineLimit(1)
        .padding()
        
        // third preview
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
            .font(.largeTitle)
//            .border(Color.black)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        
        // fourth preview
        GeometryReader { geometry in
            VStack {
                Text("Hello World, how are you?")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width/2, height: (geometry.size.height/4)*3)
                Text("Goodbye World")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width/3, height: geometry.size.height/4)
            }
        }
    }
}

struct StacksAndFrames_Previews: PreviewProvider {
    static var previews: some View {
        StacksAndFrames()
            .preferredColorScheme(.light)
    }
}
