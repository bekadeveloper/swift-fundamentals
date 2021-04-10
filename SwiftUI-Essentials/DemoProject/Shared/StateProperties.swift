//
//  StateProperties.swift
//  DemoProject
//
//  Created by Begzod Bakhriddinov on 10/04/21.
//

import SwiftUI

struct StateProperties: View {
    @State private var wifiEnabled = false
    @State private var userName = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 25) {
            TextField("Enter your username:", text: $userName)
                .font(.title2)
            Text("Hello \(userName)")
                .font(.title)
            
            Spacer()
            
            Toggle(isOn: $wifiEnabled) {
                Text("Enable WiFi")
            }
            WifiIcon(wifiEnabled: $wifiEnabled)
        }
        .padding()
    }
}

struct WifiIcon: View {
    @Binding var wifiEnabled: Bool
    
    var body: some View {
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
            .resizable()
            .frame(width: 50, height: wifiEnabled ? 40 : 50)
            .foregroundColor(wifiEnabled ? .green : .gray)
    }
}

struct Bindings_Previews: PreviewProvider {
    static var previews: some View {
        StateProperties()
            .preferredColorScheme(.dark)
    }
}
