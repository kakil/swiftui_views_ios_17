//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ForegroundStyle_Gradient: View {
    let gradient = LinearGradient(colors: [.blue, .green],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ForegroundStyle",
                       subtitle: "Gradients",
                       desc: "Use this modifier to apply a gradient to the foreground content of a view.")
            
            Text("Apply Styles To Text")
                .bold()
                .foregroundStyle(gradient)
            
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundStyle(gradient)
                .overlay(Text("Shapes").bold())
            
            Image(systemName: "paintpalette.fill")
                .font(.system(size: 150))
                .foregroundStyle(gradient)
                .overlay(Text("Images").bold())
        }
        .font(.title)
    }
}

struct ForegroundStyle_Gradient_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyle_Gradient()
            .preferredColorScheme(.dark)
    }
}
