//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Color_NewInIos15: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("Color",
                       subtitle: "New in iOS 15",
                       desc: "Here are some new colors you use natively in SwiftUI now.")
                .layoutPriority(1)
            Group {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.mint)
                    .overlay(Text("Mint"))
                RoundedRectangle(cornerRadius: 20)
                    .fill(.teal)
                    .overlay(Text("Teal"))
                RoundedRectangle(cornerRadius: 20)
                    .fill(.cyan)
                    .overlay(Text("Cyan"))
                RoundedRectangle(cornerRadius: 20)
                    .fill(.indigo)
                    .overlay(Text("Indigo").foregroundStyle(.white))
                RoundedRectangle(cornerRadius: 20)
                    .fill(.brown)
                    .overlay(Text("Brown"))
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

struct Color_NewInIos15_Previews: PreviewProvider {
    static var previews: some View {
        Color_NewInIos15()
    }
}
