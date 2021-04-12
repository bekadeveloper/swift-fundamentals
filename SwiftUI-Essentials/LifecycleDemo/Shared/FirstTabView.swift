//
//  FirstTabView.swift
//  LifecycleDemo
//
//  Created by Begzod Bakhriddinov on 12/04/21.
//

import SwiftUI

struct FirstTabView: View {
    var body: some View {
        Text("View One")
            .onAppear(perform: {
                print("onAppear triggered")
            })
            .onDisappear(perform: {
                print("onDisappear triggered")
            })
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
