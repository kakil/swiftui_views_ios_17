// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Color_Gradient: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(.red.gradient)
            
            RoundedRectangle(cornerRadius: 16)
                .fill(.purple.gradient)
            
            RoundedRectangle(cornerRadius: 16)
                .fill(.blue.gradient)
        }
        .padding()
    }
}

struct Color_Gradient_Previews: PreviewProvider {
    static var previews: some View {
        Color_Gradient()
    }
}
