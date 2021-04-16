//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 16/04/21.
//

import SwiftUI

struct ContentView: View {
    let carStore: CarStore = CarStore(cars: carData)
    
    var body: some View {
        ListView()
            .environmentObject(carStore)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
