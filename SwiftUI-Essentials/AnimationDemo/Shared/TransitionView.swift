//
//  TransitionView.swift
//  AnimationDemo
//
//  Created by Begzod Bakhriddinov on 21/04/21.
//

import SwiftUI

struct TransitionView: View {
    @State private var textIsVisible : Bool = true
    
    var body: some View {
        VStack(spacing: 25) {
            if textIsVisible {
                Text("Hello, World")
                    .font(.largeTitle)
                    .transition(.moveAndFade)
                    
            }
            
            Toggle(isOn: $textIsVisible.animation(.linear(duration: 1))) {
                Text("Show/Hide text")
                    .font(.headline)
            }
            .padding()
        }
        .padding()
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}


extension AnyTransition {
    static var moveAndFade: AnyTransition {
        AnyTransition.opacity.combined(with: .move(edge: .top))
    }
}
