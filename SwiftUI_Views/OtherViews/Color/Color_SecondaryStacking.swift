//  Created by Mark Moeykens on 7/10/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Color_SecondaryStacking : View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView("Color",
                       subtitle: "Layering the Secondary Color",
                       desc: "When you stack the Secondary color on top of each other, it gets slightly darker or lighter, depending if in light or dark mode.")
            
            ZStack {
                Color.secondary
                Color.secondary.padding(28)
                Color.secondary.padding(60)
                Color.secondary.padding(80)
                Color.secondary.padding(100)
            }
            .frame(height: 300)
        }
        .font(.title)
    }
}

struct Color_SecondaryStacking_Previews : PreviewProvider {
    static var previews: some View {
        Color_SecondaryStacking()
    }
}
