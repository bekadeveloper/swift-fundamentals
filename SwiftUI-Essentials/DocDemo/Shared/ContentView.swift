//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 23/04/21.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: DocDemoDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(DocDemoDocument()))
    }
}
