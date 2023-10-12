// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct EllipticalGradient_RadiusFraction: View {
    let gradient = Gradient(colors: [.green, .blue])
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Elliptical Gradient",
                       subtitle: "Radius Fraction",
                       desc: "Use the radius fraction parameters to control the range of color spread in your gradient.")
                .layoutPriority(1)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(gradient,
                                                     center: .center,
                                                     startRadiusFraction: 0.1,
                                                     endRadiusFraction: 0.9))
                .overlay(Text("Radius Fractions"), alignment: .top)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(gradient, center: .center))
                .overlay(Text("Default"), alignment: .top)
        }
        .font(.title)
    }
}

struct EllipticalGradient_RadiusFraction_Previews: PreviewProvider {
    static var previews: some View {
        EllipticalGradient_RadiusFraction()
    }
}
