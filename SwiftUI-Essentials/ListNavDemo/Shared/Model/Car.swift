//
//  Car.swift
//  ListNavDemo
//
//  Created by Begzod Bakhriddinov on 16/04/21.
//

import Foundation
import SwiftUI

struct Car: Codable, Identifiable {
    var id: String
    var name: String
    
    var description: String
    var isHybrid: Bool
    
    var imageName: String
}
