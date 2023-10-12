//  Created by Mark Moeykens on 6/26/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.

import SwiftUI

struct TabView_Intro : View {
    var body: some View {
        TabView {
            // First Screen
            VStack(spacing: 20) {
                HeaderView("TabView",
                           subtitle: "Introduction",
                           desc: "The TabView view can hold multiple views, one for each tab.")
                
                Text("At the end of a view, you add .tabItem modifier to show a button that allows navigation to that view.")
                    .padding()
                
                Image("TabItem")
                
            }
            .tabItem {
                // Creates a tab button in the tab bar
                Text("Tab 1")
            }
            
            // Second Screen
            Text("This view represents the Second Screen.")
                .tabItem {
                    // Creates a tab button in the tab bar
                    Text("Tab 2")
                }
        }
        .font(.title)
    }
}


struct TabView_Intro_Previews : PreviewProvider {
    static var previews: some View {
        TabView_Intro()
    }
}
