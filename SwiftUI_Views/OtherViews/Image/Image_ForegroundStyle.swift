//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Image_ForegroundStyle: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("Image - Symbols",
                       subtitle: "ForegroundStyle",
                       desc: "Use the foregroundStyle modifier to specify different colors for a multi-color symbol.", back: .red)
                .layoutPriority(1)

            // Book Note: Using foregroundStyle implicitly use the palette symbol rendering mode.
            List {
                Label("Green", systemImage: "gauge.badge.plus")
                    .foregroundStyle(.green)
                Label("Green, Red", systemImage: "gauge.badge.plus")
                    .foregroundStyle(.green, .red)
                Label("Green, Red, Yellow", systemImage: "arrow.uturn.backward")
                    .foregroundStyle(.green, .red, .yellow)
                Label("Green, Red, Yellow", systemImage: "arrow.uturn.backward.circle")
                    .foregroundStyle(.green, .red, .yellow)
                Label("Green, Red, Yellow", systemImage: "arrow.uturn.backward.circle.fill")
                    .foregroundStyle(.green, .red, .yellow)
            }
            .listStyle(.plain)
            
            DescView(desc: "Hint: Most symbols just use two colors. The second color could be Secondary or Tertiary.", back: .red)
        }
        .font(.title)
    }
}

struct Image_ForegroundStyle_Previews: PreviewProvider {
    static var previews: some View {
        Image_ForegroundStyle()
    }
}
