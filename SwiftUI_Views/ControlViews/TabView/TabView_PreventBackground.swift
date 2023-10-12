// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct TabView_PreventBackground: View {
    var body: some View {
        TabView {
            VStack(spacing: 20.0) {
                HeaderView("TabView",
                           subtitle: "Prevent Background",
                           desc: "To prevent your background from ignoring the tab view safe area edge, define a different edge or use .init().")
                Spacer()
                Button(action: {}) {
                    Text("Take Action")
                        .foregroundStyle(.white)
                        .padding()
                        .background(Color.green)
                }
            }
            .tabItem {
                Image(systemName: "house")
            }
            
            VStack {
                Text("Messages")
                Spacer()
                Button(action: {}) {
                    Text("Take Action")
                        .foregroundStyle(.white)
                        .padding()
                        .background(Color.green, ignoresSafeAreaEdges: .top)
                }
            }
            .tabItem {
                Image(systemName: "envelope")
            }
        }
        .font(.title)
    }
}

struct TabView_PreventBackground_Previews: PreviewProvider {
    static var previews: some View {
        TabView_PreventBackground()
            .preferredColorScheme(.dark)
    }
}
