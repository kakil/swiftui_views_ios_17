// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Shadow_Style_Images: View {
    var body: some View {
        VStack(spacing: 50.0) {
            Image(systemName: "wifi")
                .font(.system(size: 200))
                .foregroundStyle(
                    .green
                        .gradient
                        .shadow(.inner(radius: 4))
                )
            
            Image("PineTree")
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .foregroundStyle(
                    .green
                        .shadow(.drop(radius: 16))
                        .shadow(.inner(color: .blue, radius: 16))
                )
        }
    }
}

struct Shadow_Style_Images_Previews: PreviewProvider {
    static var previews: some View {
        Shadow_Style_Images()
    }
}
