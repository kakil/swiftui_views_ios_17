//  Created by Mark Moeykens on 7/11/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Divider_Customizing : View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Divider").font(.largeTitle)
            Text("Customization").font(.title).foregroundStyle(.gray)
            
            Text("You can change the colors of Dividers using the background modifier.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.green).foregroundStyle(.white)
                .font(.title).layoutPriority(1)
            
            Text("Red")
            Divider().background(Color.red)
            Text("Blue")
            Divider().background(Color.blue)
            
            Text("You can also change the size (but not the thickness) of a Divider.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.green).foregroundStyle(.white)
                .font(.title).layoutPriority(1)
            
            HStack {
                Divider().frame(height: 40)
                Text("When vertical, you change the height")
                Divider().frame(height: 40)
            }
            
            Group {
                Divider().frame(width: 300)
                Text("When horizontal, you change the width")
                Divider().frame(width: 300)
            }
        }
    }
}

struct Divider_Customizing_Previews : PreviewProvider {
    static var previews: some View {
        Divider_Customizing()
    }
}
