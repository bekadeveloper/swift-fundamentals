//
//  ImageDocDemoApp.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 23/04/21.
//

import SwiftUI

@main
struct ImageDocDemoApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: ImageDocDemoDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
