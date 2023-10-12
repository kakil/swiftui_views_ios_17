//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Background_Content: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Spacer()
            
            HeaderView("Background",
                       subtitle: "Safe Area",
                       desc: "You can have JUST the background ignore safe areas.")
            
            Text("Compare how I added this background color to the previous page.")
            Spacer()
        }
        .font(.title)
        .background(Color("GoldColor")
                        .opacity(0.2))
    }
}

struct Background_Content_Previews: PreviewProvider {
    static var previews: some View {
        Background_Content()
    }
}
