//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Accessibility_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Accessibility",
                       subtitle: "Introduction",
                       desc: "Accessibility is automatically built into SwiftUI. But you can enhance it with the accessibility modifier.", back: .green)
            
            Text("Hello, new user!")
            Image(systemName: "hand.wave.fill")
                .accessibilityLabel(Text("hand waving"))
                .font(Font.system(size: 50))
        }
        .font(.title)
    }
}

struct Accessibility_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility_Intro()
    }
}
