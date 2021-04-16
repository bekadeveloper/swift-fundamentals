//
//  CarDetailView.swift
//  ListNavDemo
//
//  Created by Begzod Bakhriddinov on 16/04/21.
//

import SwiftUI

struct CarDetail: View {
    let selectedCar: Car
    
    var body: some View {
        Form {
            Section(header: Text("Car Details")) {
                Image(selectedCar.imageName)
                    .resizable()
                    .cornerRadius(11.0)
                    .aspectRatio(contentMode: .fit)
                    .padding(10)
                
                Text(selectedCar.name)
                    .font(.headline)
                
                Text(selectedCar.description)
                    .font(.body)
                
                HStack {
                    Text("Hybrid").font(.headline)
                    Spacer()
                    Image(systemName: selectedCar.isHybrid ? "checkmark.circle" : "xmark.circle")
                }
            }
        }
    }
}

struct CarDetail_Previews: PreviewProvider {
    static var previews: some View {
        CarDetail(selectedCar: carData[0])
            .preferredColorScheme(.light)
    }
}
