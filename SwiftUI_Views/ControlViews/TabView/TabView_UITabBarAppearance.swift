// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct TabView_UITabBarAppearance: View {
    var body: some View {
        TabView {
            VStack(spacing: 20.0) {
                HeaderView("TabView",
                           subtitle: "UITabBarAppearance",
                           desc: "Use UITabBarAppearance to apply a style/color on ALL tabs.")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            VStack {
                Text("Messages")
            }
            .tabItem {
                Image(systemName: "envelope")
                Text("Messages")
            }
        }
        .font(.title)
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color.green.opacity(0.2))
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

struct TabView_UITabBarAppearance_Previews: PreviewProvider {
    static var previews: some View {
        TabView_UITabBarAppearance()
            .preferredColorScheme(.dark)
    }
}
