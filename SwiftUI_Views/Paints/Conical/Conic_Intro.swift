// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Conic_Intro: View {
    let gradient = Gradient(colors: [.green, .blue])
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Conic Gradient",
                       subtitle: "Introduction",
                       desc: "The conic gradient is much like the angular gradient but angle is optional.")
                .layoutPriority(1)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.conicGradient(gradient, center: .center))
                .overlay(Text("Conic Gradient"), alignment: .top)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.angularGradient(gradient, center: .center,
                                                  startAngle: .degrees(90),
                                                  endAngle: .degrees(270)))
                .overlay(Text("Angular Gradient"), alignment: .top)
        }
        .font(.title)
    }
}

struct Conic_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Conic_Intro()
    }
}
