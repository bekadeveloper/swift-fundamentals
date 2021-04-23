//
//  DocDemoApp.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 23/04/21.
//

import SwiftUI

@main
struct DocDemoApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: DocDemoDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
