//
//  ScrumProgressViewStyle.swift
//  Scrumdinger
//
//  Created by Zack Williams on 28/07/2024.
//

import SwiftUI

struct ScrumProgressViewStyle: ProgressViewStyle {
    var theme: Theme
    
    
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(theme.accentColour)
                .frame(height: 20.0)
            ProgressView(configuration)
                .tint(theme.mainColour)
                .frame(height: 12.0)
                .padding(.horizontal)
        }
    }
}

struct ScrumProgressViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(value: 0.4)
            .progressViewStyle(ScrumProgressViewStyle(theme: .buttercup))
            .previewLayout(.sizeThatFits)
    }
}
