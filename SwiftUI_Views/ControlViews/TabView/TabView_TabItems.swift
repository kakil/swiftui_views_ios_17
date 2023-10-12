//  Created by Mark Moeykens on 7/4/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.

import SwiftUI

struct TabView_TabItems : View {
    var body: some View {
        TabView {
            TabOne()
                .tabItem {
                    Text("Tab Text")
                }
            Text("Phone Calls")
                .tabItem {
                    Image(systemName: "phone")
                }
            Text("Outgoing Phone Calls")
                .tabItem {
                    Image(systemName: "phone.arrow.up.right")
                    Text("Outgoing")
                }
            Text("Messages")
                .tabItem {
                    Label("Messages", systemImage: "phone.and.waveform.fill")
                }
        }
    }
}

struct TabOne: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("TabView",
                       subtitle: "Tab Items",
                       desc: "TabItems can accept Text, Image or both. Notice the order of Text and Image does not matter for the tabItem.")
                .font(.title)
        }
    }
}

struct TabView_TabItems_Previews : PreviewProvider {
    static var previews: some View {
        TabView_TabItems()
    }
}
