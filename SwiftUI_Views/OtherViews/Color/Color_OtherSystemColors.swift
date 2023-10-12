//  Created by Mark Moeykens on 7/8/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Color_OtherSystemColors : View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("Color",
                       subtitle: "Other System Colors",
                       desc: "These colors show differently depending on Light or Dark mode.")
            
            Text("Light Mode").font(.title)
            Text("Primary Color")
                .foregroundStyle(Color.primary)
            Text("Secondary Color")
                .foregroundStyle(Color.secondary)
            Text("Accent Color")
                .foregroundStyle(Color.accentColor)
            
            Group {
                Text("Dark Mode").font(.title)
                Text("Primary Color")
                    .foregroundStyle(Color.primary)
                Text("Secondary Color")
                    .foregroundStyle(Color.secondary)
                Text("Accent Color")
                    .foregroundStyle(Color.accentColor)
            }
        }
        .font(.title)
    }
}

struct Color_OtherSystemColors_Previews : PreviewProvider {
    static var previews: some View {
        Color_OtherSystemColors()
    }
}
