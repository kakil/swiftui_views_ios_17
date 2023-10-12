// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Background_HierarchicalColor: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Background",
                       subtitle: "Hierarchical Color",
                       desc: "Add a color using foregroundStyle to the parent view and the child hierarchical styles will use it.")
                .foregroundStyle(.primary)
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
        .foregroundStyle(.green)
    }
}

struct Background_HierarchicalColor_Previews: PreviewProvider {
    static var previews: some View {
        Background_HierarchicalColor()
    }
}
