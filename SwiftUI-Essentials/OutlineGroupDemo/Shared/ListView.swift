//
//  ListView.swift
//  OutlineGroupDemo
//
//  Created by Begzod Bakhriddinov on 17/04/21.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        List {
            ForEach(carItems) { carItem in
                Section(header: Label(carItem.name, systemImage: carItem.image)) {
                    OutlineGroup(carItem.children ?? [CarInfo](), children: \.children) { child in
                        ListCellView(item: child)
                    }
                }
            }
        }
        .listStyle(SidebarListStyle())
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
