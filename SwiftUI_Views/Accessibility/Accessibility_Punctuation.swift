//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Accessibility_Punctuation: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Accessibility",
                       subtitle: "Control & Punctuation Matters",
                       desc: "How your text is read by VoiceOver is also determined by the control and punctuation you use. Using a period will introduce a noticeable pause.", back: .green)
            
            Button(action: {}, label: {
                Image(systemName: "x.circle")
            })
            
            Button(action: {}, label: {
                Image(systemName: "x.circle")
            })
            .accessibilityLabel(Text("Close Button"))
            
            Button(action: {}, label: {
                Image(systemName: "x.circle")
            })
            .accessibilityLabel(Text("Close."))
            
            Button(action: {}, label: {
                Image(systemName: "x.circle")
            })
            .accessibilityLabel(Text("Close"))
        }
        .font(.title)
    }
}

struct Accessibility_Punctuation_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility_Punctuation()
    }
}
