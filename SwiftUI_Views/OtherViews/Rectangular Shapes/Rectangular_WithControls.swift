//  Created by Mark Moeykens on 8/12/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.

import SwiftUI

struct Rectangular_WithControls: View {
    @State private var textField = "Rounded Rectangle with TextField"
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Rectangular Shapes",
                       subtitle: "Using with Controls",
                       desc: "You can apply rectangular shapes to other views using the .background modifier",
                       back: .blue, textColor: .white)
                .font(.title)
            
            Button(action: {}) {
                Text("RoundedRectange and Button")
                    .bold().padding()
            }
            .background(RoundedRectangle(cornerRadius: 10)
            .strokeBorder(Color.blue, lineWidth: 1))
            .tint(.blue)
            
            Button(action: {}) {
                Text("RoundedRectange and Button")
                    .foregroundStyle(.white)
                    .bold().padding()
            }
            .background(RoundedRectangle(cornerRadius: 10).foregroundStyle(.blue))
            
            TextField("Placeholder Text", text: $textField)
                .foregroundStyle(.white)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).foregroundStyle(.blue))
                .padding()
        }
    }
}

struct Rectangular_WithControls_Previews: PreviewProvider {
    static var previews: some View {
        Rectangular_WithControls()
    }
}
