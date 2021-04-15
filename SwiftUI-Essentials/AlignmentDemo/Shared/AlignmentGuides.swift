//
//  AlignmentGuides.swift
//  AlignmentDemo
//
//  Created by Begzod Bakhriddinov on 15/04/21.
//

import SwiftUI

struct AlignmentGuides: View {
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 120, height: 50)
                .foregroundColor(.red)
            
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 200, height: 50)
                .alignmentGuide(.leading, computeValue: { d in d.width/2 })
                .foregroundColor(.gray)
            
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 180, height: 50)
                .foregroundColor(.red)
            
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 150, height: 50)
                .alignmentGuide(.leading, computeValue: { d in d[HorizontalAlignment.trailing] + 15 })
                .foregroundColor(.gray)
        }
    }
}

struct AlignmentGuides_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuides()
    }
}
