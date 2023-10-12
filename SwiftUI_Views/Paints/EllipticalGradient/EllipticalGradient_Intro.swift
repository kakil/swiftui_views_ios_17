// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct EllipticalGradient_Intro: View {
    let gradient = Gradient(colors: [.green, .blue])
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Elliptical Gradient",
                       subtitle: "Introduction",
                       desc: "The elliptical gradient is much like the radial gradient but it automatically conforms to the size of its container.")
                .layoutPriority(1)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(gradient, center: .center))
                .overlay(Text("Elliptical Gradient"), alignment: .top)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.radialGradient(gradient, center: .center,
                                                 startRadius: 10, endRadius: 200))
                .overlay(Text("Radial Gradient"), alignment: .top)
        }
        .font(.title)
    }
}

struct EllipticalGradient_Intro_Previews: PreviewProvider {
    static var previews: some View {
        EllipticalGradient_Intro()
    }
}
