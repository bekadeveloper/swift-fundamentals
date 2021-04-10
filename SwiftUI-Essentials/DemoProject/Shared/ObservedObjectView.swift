//
//  ObservedObjectView.swift
//  DemoProject
//
//  Created by Begzod Bakhriddinov on 10/04/21.
//

import SwiftUI

struct ObservedObjectView: View {
    @ObservedObject var demoData: DemoData = DemoData()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            TextField("Enter your username", text: $demoData.currentUser)
            
            Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
        }
        .font(.title2)
        .padding()
    }
}

struct ObservedObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectView()
            .preferredColorScheme(.dark)
    }
}
