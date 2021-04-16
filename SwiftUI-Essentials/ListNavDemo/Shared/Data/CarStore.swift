//
//  CarStore.swift
//  ListNavDemo
//
//  Created by Begzod Bakhriddinov on 16/04/21.
//

import Foundation
import SwiftUI
import Combine

class CarStore: ObservableObject {
    @Published var cars: [Car]
    
    init(cars: [Car]) {
        self.cars = cars
    }
}
