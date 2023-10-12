//  Created by Mark Moeykens on 7/5/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Color_LightDarkMode : View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("Color",
                       subtitle: "In Light and Dark Modes",
                       desc: "The system colors will actually change in light and dark mode to provide optimal contrast. If you supply a named color, you should try to adopt this practice.")
                .font(.title)
            
                Group {
                    Color.pink
                    Color.red
                    Color.purple
                    Color.blue
                    Color.green
                    Color.yellow
                    Color.orange
                    Text("Custom Colors")
                    Color("AccentColorDark")
                    Color("AccentColorLight")
                }
                .frame(height: 40)
        }
    }
}

struct Color_LightDarkMode_Previews : PreviewProvider {
    static var previews: some View {
        Color_LightDarkMode()
    }
}
