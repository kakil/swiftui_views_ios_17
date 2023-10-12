//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Background_Default: View {
    var body: some View {
        ZStack {
            Color("GoldColor")
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack(spacing: 20.0) {
                HeaderView("Background",
                           subtitle: "Default (iOS 15)",
                           desc: "If you add a background modifier to any view it will default to the same color used as your default background color.")
                
                Text("Background is the system background color.")
                    .padding()
                    .background()
            }
            .font(.title)
        }
    }
}

struct Background_Default_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Background_Default()
            Background_Default()
                .preferredColorScheme(.dark)
        }
    }
}
