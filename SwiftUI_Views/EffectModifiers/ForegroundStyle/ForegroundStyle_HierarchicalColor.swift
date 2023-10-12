// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct ForegroundStyle_HierarchicalColor: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("ForegroundStyle",
                       subtitle: "Hierarchical Color",
                       desc: "Set a color on a parent view and use hierarchical foreground styles on child views.")
            
            VStack(spacing: 20.0) {
                Image(systemName: "paintpalette.fill")
                    .foregroundStyle(.primary)
                
                Text("Title - Primary")
                    .font(.largeTitle)
                
                Text("Subtitle - Secondary")
                    .font(.body)
                    .foregroundStyle(.secondary)
                
                
                RoundedRectangle(cornerRadius: 18)
                    .foregroundStyle(.tertiary)
                    .padding()
                    .overlay(Text("Tertiary"))
                
                Text("Background - Quaternary")
                    .foregroundStyle(.quaternary)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 18)
                            .foregroundStyle(.quaternary))
            .padding()
            .foregroundStyle(.orange)
           
        }
        .font(.title)
    }
}

struct ForegroundStyle_HierarchicalColor_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyle_HierarchicalColor()
            .preferredColorScheme(.dark)
    }
}
