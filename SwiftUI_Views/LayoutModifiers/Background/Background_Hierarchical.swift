// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Background_Hierarchical: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Background",
                       subtitle: "Hierarchical",
                       desc: "Use hierarchical styles with the background modifier to create levels of depth.")
            
            Image(systemName: "02.square")
                .foregroundStyle(.ultraThickMaterial)
                .padding()
                .background(.secondary)
                .padding()
                .background(.secondary)
                .padding()
                .background(.secondary)
            
            Image(systemName: "03.square")
                .foregroundStyle(.ultraThickMaterial)
                .padding()
                .background(.tertiary)
                .padding()
                .background(.tertiary)
                .padding()
                .background(.tertiary)
            
            Image(systemName: "04.square")
                .foregroundStyle(.ultraThickMaterial)
                .padding()
                .background(.quaternary)
                .padding()
                .background(.quaternary)
                .padding()
                .background(.quaternary)
        }
        .font(.title)
    }
}

struct Background_Hierarchical_Previews: PreviewProvider {
    static var previews: some View {
        Background_Hierarchical()
    }
}
