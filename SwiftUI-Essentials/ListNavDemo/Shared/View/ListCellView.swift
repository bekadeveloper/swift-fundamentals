//
//  ListCellView.swift
//  ListNavDemo
//
//  Created by Begzod Bakhriddinov on 16/04/21.
//

import SwiftUI

struct ListCell: View {
    var car: Car
    
    var body: some View {
        HStack {
            Image(car.imageName)
                .resizable()
                .cornerRadius(3.0)
                .frame(width: 100, height: 60)
            
            Text(car.name)
        }
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(car: carData[0])
    }
}
