//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 09/04/21.
//
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(alignment: .center) {
        
            Image(systemName: "swift")
                .resizable()
                .frame(width: 150, height: 130)
                .foregroundColor(.red)
                .padding(30)
            
            Text("The Swift Programming Language")
                .modifier(CustomModifier())
            
//            Button(action: { print("button is clicked") }) {
//                Image(systemName: "square.fill")
//                    .resizable()
//                    .frame(width: 25, height: 25)
//            }
            
//            CustomContainer {
//                Text("Text 1")
//                Text("Text 2")
//
//                HStack {
//                    Image(systemName: "star.fill")
//                    Image(systemName: "star.fill")
//                    Image(systemName: "star")
//                }
//            }
            
            Spacer()
            
            Label(
                title: {
                    Text("Welcome to SwiftUI")
                        .modifier(CustomModifier())
                },
                icon: {
                    Image("swiftui-logo")
                        .resizable()
                        .frame(width: 70, height: 70)
                })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
