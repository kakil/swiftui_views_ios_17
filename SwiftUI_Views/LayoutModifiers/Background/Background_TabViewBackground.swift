// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Background_TabViewBackground: View {
    var body: some View {
        TabView {
            VStack(spacing: 20.0) {
                Spacer()
                
                HeaderView("Background",
                           subtitle: "Custom TabView background",
                           desc: "You use the background modifier to customize the background of the tab view now.")
                
                Spacer()
                
                Divider()
                    .background(Color("GoldColor").opacity(0.6))
            }
            .font(.title)
            .background(Color("GoldColor").opacity(0.2))
            .tabItem {
                Image(systemName: "01.square")
                Text("Tab 1")
            }
            
            Text("Tab 2")
                .tabItem {
                    Image(systemName: "02.square")
                    Text("Tab 2")
                }
        }
    }
}

struct Background_TabViewBackground_Previews: PreviewProvider {
    static var previews: some View {
        Background_TabViewBackground()
    }
}
