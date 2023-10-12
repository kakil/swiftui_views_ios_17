// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct EllipticalGradient_SizeChanges: View {
    let gradient = Gradient(colors: [.green, .blue])
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Elliptical Gradient",
                       subtitle: "Size Change",
                       desc: "Without setting any other properties the elliptical gradient stretches to fill the available area.")
                .layoutPriority(1)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(gradient, center: .center))
                .frame(height: 150)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(gradient, center: .center))
                .frame(width: 150)
        }
        .font(.title)
    }
}

struct EllipticalGradient_SizeChanges_Previews: PreviewProvider {
    static var previews: some View {
        EllipticalGradient_SizeChanges()
    }
}
