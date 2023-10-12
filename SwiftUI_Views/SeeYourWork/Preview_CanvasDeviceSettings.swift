//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Preview_CanvasDeviceSettings: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("Previews",
                       subtitle: "Canvas Device Settings",
                       desc: "Use canvase device settings to change your preview's color scheme, orientation, and dynamic type.",
                       textColor: .white)
        }
        .font(.title)
    }
}

#Preview {
    Preview_CanvasDeviceSettings()
        .previewInterfaceOrientation(.landscapeLeft)
}
