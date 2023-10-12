// Copyright © 2023 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Overlay_BackgroundColor: View {
    var body: some View {
        Color.teal.opacity(0.3)
            .ignoresSafeArea()
            .overlay {
                VStack {
                    Text("Overlay Content")
                        .font(.title)
                }
            }
    }
}

#Preview {
    Overlay_BackgroundColor()
}
