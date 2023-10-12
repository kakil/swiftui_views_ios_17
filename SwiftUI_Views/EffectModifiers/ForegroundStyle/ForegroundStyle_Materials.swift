// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct ForegroundStyle_Materials: View {
    var body: some View {
        ZStack {
            Image("water")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 20.0) {
                HeaderView("ForegroundStyle",
                           subtitle: "Materials",
                           desc: "Use this modifier to apply a material to the foreground content of a view.")
                
                Text("Apply Styles To Text")
                    .bold()
                    .foregroundStyle(.thickMaterial)
                
                RoundedRectangle(cornerRadius: 20)
                    .padding()
                    .foregroundStyle(.ultraThinMaterial)
                    .overlay(Text("Shapes").bold())
                
                Image(systemName: "paintpalette.fill")
                    .font(.system(size: 150))
                    .foregroundStyle(.regularMaterial)
                    .overlay(Text("Images").bold())
            }
            .font(.title)
        }
    }
}

struct ForegroundStyle_Materials_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyle_Materials()
            .preferredColorScheme(.dark)
    }
}
