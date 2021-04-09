//
//  ViewModifiers.swift
//  DemoProject
//
//  Created by Begzod Bakhriddinov on 09/04/21.
//

import SwiftUI

struct CustomModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .shadow(color: .white, radius: 7, x: 0, y: 7)
            .padding(5)
    }
}
