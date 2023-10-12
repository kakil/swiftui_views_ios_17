//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Accessibility_Hiding: View {

    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Accessibility",
                       subtitle: "Hiding",
                       desc: "Sometimes VoiceOver doesn't do a great job when reading values. You can help it out by supplying how you want the value to be read.",
                       back: .green)
            
            
        }
        .font(.title)
    }
}

struct Accessibility_Hiding_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility_Hiding()
    }
}
