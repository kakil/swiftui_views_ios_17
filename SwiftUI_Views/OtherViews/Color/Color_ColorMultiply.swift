//  Created by Mark Moeykens on 6/18/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Color_ColorMultiply : View {
    var body: some View {
        VStack(spacing: 30) {
            HeaderView("Color", subtitle: "Color Multiply",
                       desc: "You can combine colors to form new colors with the color multiply modifier.")
            HStack {
                Color.pink.frame(width: 88, height: 88)
                Image(systemName: "plus")
                Color.blue.frame(width: 88, height: 88)
                Image(systemName: "equal")
                Color.pink.colorMultiply(Color.blue)
                    .frame(width: 88, height: 88)
            }
            HStack {
                Color.yellow.frame(width: 88, height: 88)
                Image(systemName: "plus")
                Color.blue.frame(width: 88, height: 88)
                Image(systemName: "equal")
                Color.yellow.colorMultiply(Color.blue)
                    .frame(width: 88, height: 88)
            }
            HStack {
                Color.yellow.frame(width: 88, height: 88)
                Image(systemName: "plus")
                Color.red.frame(width: 88, height: 88)
                Image(systemName: "equal")
                Color.yellow.colorMultiply(Color.red)
                    .frame(width: 88, height: 88)
            }
        }
        .font(.title)
    }
}

struct Color_ColorMultiply_Previews : PreviewProvider {
    static var previews: some View {
        Color_ColorMultiply()
    }
}
