//
//  ContainerViews.swift
//  DemoProject
//
//  Created by Begzod Bakhriddinov on 09/04/21.
//

import SwiftUI

struct CustomContainer<Content: View>: View {
    let content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(spacing: 10) {
            content()
        }
        .font(.title3)
    }
}
