//
//  AppStorageView.swift
//  StorageDemo
//
//  Created by Begzod Bakhriddinov on 14/04/21.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("mytext") var editorText: String = "Sample Text"
    
    var body: some View {
        TextEditor(text: $editorText)
            .font(.largeTitle)
            .padding(30)
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
            .previewDevice("iPhone 12 mini")
    }
}
