//
//  ContainerAlignment.swift
//  AlignmentDemo
//
//  Created by Begzod Bakhriddinov on 15/04/21.
//

import SwiftUI

struct ContainerAlignment: View {
    var body: some View {
        VStack(spacing: 25) {
            VStack(alignment: .trailing, spacing: 10) {
                Text("This is some text")
                    .font(.largeTitle)
                Text("This is some longer text")
                    .font(.body)
                Text("This is short")
                    .font(.headline)
            }
            
            Divider()
            
            HStack(alignment: .lastTextBaseline, spacing: 10) {
                Text("This is some text")
                    .font(.largeTitle)
                Text("This is some longer text")
                    .font(.body)
                Text("This is short")
                    .font(.headline)
            }
        }
    }
}

struct ContainerAlignment_Previews: PreviewProvider {
    static var previews: some View {
        ContainerAlignment()
    }
}
