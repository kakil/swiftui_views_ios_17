// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct ForegroundStyle_Hierarchical: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ForegroundStyle",
                       subtitle: "Hierarchical",
                       desc: "Use this modifier to apply a hierarchical style to the foreground content of a view.")
            
            Text("Apply Styles To Text")
                .bold()
                .foregroundStyle(.primary)
            
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundStyle(.quaternary)
                .overlay(RoundedRectangle(cornerRadius: 20)
                            .padding(50)
                            .foregroundStyle(.quaternary))
                .overlay(Text("Shapes")
                            .bold()
                            .foregroundStyle(.tertiary))
            
            Image(systemName: "paintpalette.fill")
                .font(.system(size: 150))
                .foregroundStyle(.secondary)
                .overlay(Text("Images").bold())
        }
        .font(.title)
    }
}

struct ForegroundStyle_Hierarchical_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyle_Hierarchical()
            .preferredColorScheme(.dark)
    }
}
