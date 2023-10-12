// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct ForegroundStyle_Color: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ForegroundStyle",
                       subtitle: "Colors",
                       desc: "Use this modifier to apply a color to the foreground content of a view.")
            
            Text("Apply Styles To Text")
                .bold()
                .foregroundStyle(Color.pink)
            
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundStyle(Color.purple)
                .overlay(Text("Shapes").bold())
            
            Image(systemName: "paintpalette.fill")
                .font(.system(size: 150))
                .foregroundStyle(Color.blue)
                .overlay(Text("Images").bold())
        }
        .font(.title)
    }
}

struct ForegroundStyle_Color_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyle_Color()
            .preferredColorScheme(.dark)
    }
}
