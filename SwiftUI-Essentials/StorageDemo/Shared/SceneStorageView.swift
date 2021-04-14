//
//  SceneStorageView.swift
//  StorageDemo
//
//  Created by Begzod Bakhriddinov on 14/04/21.
//

import SwiftUI

struct SceneStorageView: View {
    @SceneStorage("mytext") private var editorText: String = ""

    var body: some View {
        TextEditor(text: $editorText)
            .font(.largeTitle)
            .padding(30)
    }
}

struct SceneStorageView_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageView()
            .previewDevice("iPhone 12 mini")
    }
}
