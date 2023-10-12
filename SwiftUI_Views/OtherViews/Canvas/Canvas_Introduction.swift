//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Canvas_Introduction: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("Canvas",
                       subtitle: "Introduction",
                       desc: "Use the canvas when you want to create an area in which to draw within.")
            
            Canvas { context, size in
                context.stroke(
                    Path(ellipseIn: CGRect(origin: CGPoint(x: 4, y: 4),
                                           size: CGSize(width: size.width - 8,
                                                        height: size.height - 8))),
                    with: .color(.red),
                    lineWidth: 4)
                
                let image = Image(systemName: "scribble.variable")
                context.draw(image, at: CGPoint(x: size.width/2, y: size.height/2))
            }
            .padding()
            
            DescView(desc: "Use the context for drawing. Use the size to reference the size of the canvas.")
        }
        .font(.title)
    }
}

struct Canvas_Introduction_Previews: PreviewProvider {
    static var previews: some View {
        Canvas_Introduction()
    }
}
