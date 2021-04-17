//
//  SettingsView.swift
//  OutlineGroupDemo
//
//  Created by Begzod Bakhriddinov on 17/04/21.
//

import SwiftUI

struct SettingsView: View {
    @State private var hybridState: Bool = false
    @State private var electricState: Bool = true
    @State private var fuelCellState: Bool = false
    @State private var inversionState: Bool = true
    @State private var filtersExpanded: Bool = true
 
    var body: some View {
        Form {
            
            DisclosureGroup(isExpanded: $filtersExpanded) {
                ToggleControl(state: $hybridState, title: "Hybrid Cars")
                ToggleControl(state: $electricState, title: "Electric Cars")
                ToggleControl(state: $fuelCellState, title: "Fuel Cars")
            } label: {
                Label("Categories Filters", systemImage: "car.2.fill")
                    .font(.headline)
            }
            
            
            DisclosureGroup {
                ColorControl(title: "Background Color", color: .secondary)
                ColorControl(title: "Foreground Color", color: .blue)
                ToggleControl(state: $inversionState, title: "Color Inversion")
            } label: {
                Label("Color Settings", systemImage: "scribble.variable")
                    .font(.headline)
            }
        }
    }
}

struct ToggleControl: View {
    @Binding var state: Bool
    var title: String
    
    var body: some View {
        Toggle(title, isOn: $state)
        .padding(.leading)
    }
}

struct ColorControl: View {
    var title: String
    var color: Color
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            RoundedRectangle(cornerRadius: 3.0)
                .fill(color)
                .frame(width: 30, height: 30)
        }
        .padding(.leading)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
