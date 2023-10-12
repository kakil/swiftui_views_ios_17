// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Background_Materials: View {
    var body: some View {
        ZStack {
            Image("water")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 20.0) {
                HeaderView("Background",
                           subtitle: "Materials",
                           desc: "Add a material (blur effect) as a background to other views.")
                    .background(.regularMaterial)
                
                VStack(spacing: 20) {
                    Image(systemName: "square.filled.on.square")
                        .foregroundStyle(.secondary)
                    Divider()
                    Text("Add Materials as Backgrounds")
                        .bold()
                }
                .frame(maxHeight: .infinity)
                .background(.ultraThinMaterial)
                .cornerRadius(14)
                .padding()
            }
            .font(.title)
        }
    }
}

struct Background_Materials_Previews: PreviewProvider {
    static var previews: some View {
        Background_Materials()
    }
}
