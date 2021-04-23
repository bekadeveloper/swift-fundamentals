//
//  ImageDocDemoDocument.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 23/04/21.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var exampleImage: UTType {
        UTType(importedAs: "com.imagedocdemo.image")
    }
}

struct ImageDocDemoDocument: FileDocument {
    
    var image: UIImage = UIImage()
    
    init() {
        if let image = UIImage(named: "mountain") {
            self.image = image
        }
    }

    static var readableContentTypes: [UTType] { [.exampleImage] }

    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents,
              let decodedImage: UIImage = UIImage(data: data)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        image = decodedImage
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let data = image.pngData()!
        return .init(regularFileWithContents: data)
    }
}
