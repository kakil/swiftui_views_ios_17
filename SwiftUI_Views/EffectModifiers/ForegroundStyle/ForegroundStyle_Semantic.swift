// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct ForegroundStyle_Semantic: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ForegroundStyle",
                       subtitle: "Semantic",
                       desc: "Use this modifier to apply a semantic style to the foreground content of a view.")
            
            Text("Apply Styles To Text")
                .bold()
                .foregroundStyle(.tint)
            
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundStyle(.foreground)
                .overlay(RoundedRectangle(cornerRadius: 20)
                            .padding(50)
                            .foregroundStyle(.background))
                .overlay(Text("Shapes")
                            .bold()
                            .foregroundStyle(.selection))
            
            Image(systemName: "paintpalette.fill")
                .font(.system(size: 150))
                .foregroundStyle(.foreground)
                .overlay(Text("Images").bold().foregroundStyle(.background))
        }
        .font(.title)
    }
}

struct ForegroundStyle_Semantic_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyle_Semantic()
            .preferredColorScheme(.dark)
    }
}
