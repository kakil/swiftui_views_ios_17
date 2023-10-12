//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Image_SymbolVariant: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("Image - Symbols",
                       subtitle: "SymbolVariant",
                       desc: "You can use the symbolVariant modifier to switch between different variations of the same symbol.", back: .red).font(.title)
            List {
                HStack {
                    Label("None", systemImage: "lock").symbolVariant(.none)
                    Spacer()
                    Label("Fill", systemImage: "lock").symbolVariant(.fill)
                }
                HStack {
                    Label("Circle", systemImage: "lock").symbolVariant(.circle)
                    Spacer()
                    Label("Circle.fill", systemImage: "lock").symbolVariant(.circle.fill)
                }
                HStack {
                    Label("Rectangle", systemImage: "lock").symbolVariant(.rectangle)
                    Spacer()
                    Label("Rectangle.fill", systemImage: "lock").symbolVariant(.rectangle.fill)
                }
                HStack {
                    Label("Square", systemImage: "lock").symbolVariant(.square)
                    Spacer()
                    Label("Square.fill", systemImage: "lock").symbolVariant(.square.fill)
                }
                HStack {
                    Label("Slash", systemImage: "lock").symbolVariant(.slash)
                    Spacer()
                    Label("Slash.fill", systemImage: "lock").symbolVariant(.slash.fill)
                }
            }
            .font(.title2)
        }
    }
}

struct Image_SymbolVariant_Previews: PreviewProvider {
    static var previews: some View {
        Image_SymbolVariant()
    }
}
