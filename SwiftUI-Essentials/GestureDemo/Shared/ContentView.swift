//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 22/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scale: CGFloat = 1.0
    @GestureState private var offset: CGSize = .zero
    
    var body: some View {
        
        let magnificationGesture = MagnificationGesture(minimumScaleDelta: 0)
            .onChanged { value in
                scale = value
                print("Magnifying...")
            }
            .onEnded { _ in
                print("Magnification Ended")
            }
        
        let drag = DragGesture()
            .updating($offset) { (dragValue, state, transaction) in
                state = dragValue.translation
            }
        
        return Image(systemName: "hand.tap.fill")
            .resizable()
            .foregroundColor(.blue)
            .scaleEffect(scale)
            .frame(width: 100, height: 110)
            .offset(offset)
            .gesture(drag)
    }
    
    let tap = TapGesture(count: 2)
        .onEnded { _ in
            print("Tapped")
        }
    
    let longPress = LongPressGesture(minimumDuration: 5)
        .onEnded { _ in
            print("Long Press")
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
