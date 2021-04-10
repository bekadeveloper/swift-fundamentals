//
//  ObservableObjects.swift
//  DemoProject
//
//  Created by Begzod Bakhriddinov on 10/04/21.
//

import Foundation
import Combine

class DemoData: ObservableObject {
    @Published var userCount: Int = 0
    @Published var currentUser: String = ""
    
    init() {
        update()
    }
    
    func update() {
        
    }
}

class SpeedSetting: ObservableObject {
    @Published var speed = 25.0
}
