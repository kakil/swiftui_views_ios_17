// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct TabView_Background: View {
    var body: some View {
        TabView {
            VStack(spacing: 20.0) {
                HeaderView("TabView",
                           subtitle: "Background",
                           desc: "The new background modifier allows you to have backgrounds that ignore safe area edges, such as the TabView safe area edge.")
                Spacer()
                Divider()
                    .background(.ultraThinMaterial)
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            VStack {
                Text("Messages")
                Spacer()
                Divider()
                    .background(Color.brown.opacity(0.5))
            }
            .tabItem {
                Image(systemName: "envelope")
                Text("Messages")
            }
        }
        .font(.title)
    }
}

struct TabView_Background_Previews: PreviewProvider {
    static var previews: some View {
        TabView_Background()
            .preferredColorScheme(.dark)
    }
}
