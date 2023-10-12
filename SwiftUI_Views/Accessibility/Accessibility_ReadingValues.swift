//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Accessibility_ReadingValues: View {
    @State private var sliderValue = 1.0
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Accessibility",
                       subtitle: "Reading Values",
                       desc: "Sometimes VoiceOver doesn't do a great job when reading values. You can help it out by supplying how you want the value to be read.",
                       back: .green)
            
            Slider(value: $sliderValue,
                   in: 1...10, step: 1,
                   minimumValueLabel: Image(systemName: "speaker.fill"),
                   maximumValueLabel: Image(systemName: "speaker.wave.3.fill"),
                   label: { Text("Volume")})
            .accessibilityLabel(Text("Volume"))
            .accessibilityValue(Text("\(Int(sliderValue))"))
            .foregroundStyle(.green)
            .padding()
        }
        .font(.title)
    }
}

struct Accessibility_ReadingValues_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility_ReadingValues()
    }
}
