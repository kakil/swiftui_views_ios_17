//  Created by Mark Moeykens on 6/26/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.

import SwiftUI

struct TabView_Colors : View {
    var body: some View {
        TabView {
            // Tab 1
            VStack(spacing: 20) {
                HeaderView("TabView",
                           subtitle: "Tab Item Colors",
                           desc: "Set the color of the active tab item by setting the accent color for the TabView.")
                
                Image("AccentColor")
            }
            .tabItem {
                Image(systemName: "star.fill")
            }
            // Tab 2
            Text("Second Screen")
                .tabItem {
                    Image(systemName: "moon.fill")
                }
                .foregroundStyle(Color.red)
            // Tab 3
            Text("Third Screen")
                .tabItem {
                    Image(systemName: "sun.min.fill")
                }
        }
        .font(.title)
        .accentColor(.yellow) // accentColor is deprecated but tint doesn't work yet
    }
}

struct TabView_Colors_Previews : PreviewProvider {
    static var previews: some View {
        TabView_Colors()
    }
}
