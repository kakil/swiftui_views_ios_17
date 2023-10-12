//  Created by Mark Moeykens on 8/12/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.

import SwiftUI

struct CircularShapesWithButtons: View {
    var body: some View {
        VStack(spacing: 30) {
            HeaderView("Circular Shapes",
                       subtitle: "Using with Buttons",
                       desc: "You can apply circular shapes to other views using the .background modifier.",
                       back: .purple, textColor: .white)

            Button(action: {}) {
                Text("Use the Capsule shape")
                    .bold().padding()
            }
            .background(.purple, in: Capsule().stroke())
            .tint(.purple)
            
            Button(action: {}) {
                Text("Use the Capsule shape")
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
            }
            .background(Capsule().fill(.purple))
            .tint(.purple)
            
            Text("Circle and Button combination:")
            Button(action: {}) {
                Image(systemName: "circle.grid.hex.fill")
                    .font(.largeTitle)
                    .padding()
            }
            .background(.purple, in: Circle())
            .tint(.white)
        }
        .font(.title)
    }
}

struct CircularShapesWithButtons_Previews: PreviewProvider {
    static var previews: some View {
        CircularShapesWithButtons()
    }
}
