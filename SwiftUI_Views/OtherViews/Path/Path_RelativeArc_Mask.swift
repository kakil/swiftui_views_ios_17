// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Path_RelativeArc_Mask: View {
    let angularGradient = AngularGradient(colors: [.red, .orange, .yellow, .blue, .green],
                                          center: .bottom,
                                          startAngle: .degrees(-180),
                                          endAngle: .degrees(0))
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Path", subtitle: "Path with Mask",
                       desc: "Combine your custom shapes with masks to create your own controls.", back: .purple, textColor: .white)
            
            HalfCircleProgress(progress: 0.75)
                .fill(angularGradient)
                .frame(height: 196)
                .background(Color(uiColor: .systemGray5))
                .mask(Image("meter")
                        .resizable()
                        .scaledToFit())
        }
        .font(.title)
    }
}

struct HalfCircleProgress: Shape {
    var progress: CGFloat = 0.7 // 0 to 1
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRelativeArc(center: CGPoint(x: rect.midX, y: rect.maxY),
                            radius: rect.midX,
                            startAngle: .degrees(180),
                            delta: .degrees(180 * progress))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.closeSubpath()
        
        return path
    }
}

struct Path_RelativeArc_Mask_Previews: PreviewProvider {
    static var previews: some View {
        Path_RelativeArc_Mask()
    }
}
