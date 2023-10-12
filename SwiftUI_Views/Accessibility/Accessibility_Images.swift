//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Accessibility_Images: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Accessibility",
                       subtitle: "With Images",
                       desc: "If you are showing a regular image then there is another parameter called 'label' that you can use to provide VoiceOver text.", back: .green)
            
            Image("valley", label: Text("Valley with a sunset."))
        }
        .font(.title)
    }
}

struct Accessibility_Images_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility_Images()
    }
}
