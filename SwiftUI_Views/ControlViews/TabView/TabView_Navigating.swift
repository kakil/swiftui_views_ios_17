//  Created by Mark Moeykens on 7/4/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.

import SwiftUI

struct TabView_Navigating : View {
    @State private var selectedTab = 1 // Set which tab is active
    
    var body: some View {
        // Tell the TabView which variable to listen to for changes
        TabView(selection: $selectedTab) {
            // Tab 1
            VStack(spacing: 20) {
                HeaderView("TabView",
                           subtitle: "Navigation",
                           desc: "Add a unique tag value to each screen (view) you want to programmatically navigate to. You can then bind a variable to the TabView's selection property and change that variable to navigate.")
                
                Button("Go to Tab 2") {
                    selectedTab = 2
                }
            }
            .tabItem {
                Image(systemName: "star.fill")
            }
            .tag(1)
            
            // Tab 2
            VStack {
                Text("Second Screen")
            }
            .tabItem {
                Image(systemName: "moon.fill")
            }
            .tag(2)
        }
        .font(.title)
    }
}

struct TabView_Navigating_Previews : PreviewProvider {
    static var previews: some View {
        TabView_Navigating()
    }
}
