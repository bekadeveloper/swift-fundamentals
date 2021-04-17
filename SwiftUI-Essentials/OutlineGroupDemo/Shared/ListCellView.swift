//
//  ListCellView.swift
//  OutlineGroupDemo
//
//  Created by Begzod Bakhriddinov on 17/04/21.
//

import SwiftUI

struct ListCellView: View {
    var item: CarInfo
    
    var body: some View {
        HStack {
            Image(systemName: item.image)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.green)
            
            Text(item.name)
        }
    }
}

struct ListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ListCellView(item: carItems[0])
    }
}
