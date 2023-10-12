//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Overlay_ImagesAndButtons: View {
    var body: some View {
        VStack(spacing: 40.0) {
            HeaderView("Overlay", subtitle: "Overlay Buttons on Images",
                       desc: "You can overlay buttons on images to provide functionality. \nUse offset to get it just right.",
                       back: .blue, textColor: .white)
            
            Image("profile")
                .overlay(
                    Button(action: {},
                           label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundStyle(.gray)
                                .background(Circle().fill(Color.white))
                           })
                        .offset(x: 15, y: -15),
                    alignment: .topTrailing)
        }
        .font(.title)
    }
}

struct Overlay_ImagesAndButtons_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Overlay_ImagesAndButtons()
            Overlay_ImagesAndButtons()
                .environment(\.sizeCategory, .accessibilityMedium)
        }
    }
}
