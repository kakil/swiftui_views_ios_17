//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Image_SymbolRenderingMode: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("Image - Symbols",
                       subtitle: "SymbolRenderingMode",
                       desc: "The symbolRenderingMode modifier gives you more control over how SF Symbols will be drawn.", back: .red)
            
                Label("Monochrome", systemImage: "gauge.badge.plus")
                    .symbolRenderingMode(.monochrome)
                Label("Multicolor", systemImage: "gauge.badge.plus")
                    .symbolRenderingMode(.multicolor)
                Label("Hierarchical", systemImage: "gauge.badge.plus")
                    .symbolRenderingMode(.hierarchical)
                Label("Palette", systemImage: "gauge.badge.plus")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.red, .purple.opacity(0.8))
        }
        .font(.title)
    }
}

struct Image_SymbolRenderingMode_Previews: PreviewProvider {
    static var previews: some View {
        Image_SymbolRenderingMode()
    }
}
