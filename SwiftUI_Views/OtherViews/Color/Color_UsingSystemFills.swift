//  Created by Mark Moeykens on 9/10/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Color_UsingSystemFills: View {
    var body: some View {
            VStack {
                HeaderView("Color",
                           subtitle: "Using System Fills",
                           desc: "UIColor also contains system fills that have a degree of transparency that you could use.")
                VStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(UIColor.systemFill))
                        .overlay(Text("Darkest - systemFill"))
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(UIColor.secondarySystemFill))
                        .overlay(Text("secondarySystemFill"))
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(UIColor.tertiarySystemFill))
                        .overlay(Text("tertiarySystemFill"))
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(UIColor.quaternarySystemFill))
                        .overlay(Text("Lightest - quaternarySystemFill"))
                }
            }
            .font(.title)
    }
}

struct Color_UsingSystemFills_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Color_UsingSystemFills()
            Color_UsingSystemFills()
                .preferredColorScheme(.dark)
        }
    }
}
