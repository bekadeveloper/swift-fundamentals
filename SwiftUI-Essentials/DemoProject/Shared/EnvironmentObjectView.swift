//
//  EnvironmentObjectView.swift
//  DemoProject
//
//  Created by Begzod Bakhriddinov on 10/04/21.
//

import SwiftUI

struct EnvironmentObjectView: View {
    let speedsetting = SpeedSetting()
    
    var body: some View {
        VStack(spacing: 20) {
            SpeedControlView()
            SpeedDisplayView()
        }
        .environmentObject(speedsetting)
        .padding()
    }
}

struct SpeedControlView: View {
    @EnvironmentObject var speedsetting: SpeedSetting
    
    var body: some View {
        Slider(value: $speedsetting.speed, in: 0...100)
    }
}

struct SpeedDisplayView: View {
    @EnvironmentObject var speedsetting: SpeedSetting
    
    var body: some View {
        Text("Speed: \(speedsetting.speed)")
            .font(.title2)
    }
}

struct EnvironmentObjectView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
            .preferredColorScheme(.dark)
    }
}
