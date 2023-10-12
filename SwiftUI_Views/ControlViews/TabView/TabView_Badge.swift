// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct TabView_Badge: View {
    var body: some View {
        TabView {
            // Tab 1
            VStack(spacing: 20.0) {
                HeaderView("TabView",
                           subtitle: "Badge",
                           desc: "Use the badge modifier to add a number to the tab item.")
                
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            // Tab 2
            VStack {
                Text("Messages")
            }
            .tabItem {
                Image(systemName: "envelope")
                Text("Messages")
            }
            .badge(15)
        }
        .font(.title)
    }
}

struct TabView_Badge_Previews: PreviewProvider {
    static var previews: some View {
        TabView_Badge()
    }
}
