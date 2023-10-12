//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Image_UsingGradients: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("Image - Symbols",
                       subtitle: "Using Gradients",
                       desc: "The foregroundStyle supports more than just colors. You can also apply gradients to symbols too.", back: .red)
            
            Image(systemName: "bookmark.circle.fill")
                .font(.system(size: 100))
                .foregroundStyle(
                    LinearGradient(colors: [.blue, .green],
                                   startPoint: .top, endPoint: .bottom))
            
            Image(systemName: "bookmark.circle.fill")
                .font(.system(size: 100))
                .foregroundStyle(
                    LinearGradient(colors: [.blue, .green],
                                   startPoint: .top, endPoint: .bottom),
                    RadialGradient(colors: [.yellow.opacity(0.75), .white],
                                   center: .bottomTrailing,
                                   startRadius: 40, endRadius: 120))
        }
        .font(.title)
    }
}

struct Image_UsingGradients_Previews: PreviewProvider {
    static var previews: some View {
        Image_UsingGradients()
            .preferredColorScheme(.dark)
    }
}
