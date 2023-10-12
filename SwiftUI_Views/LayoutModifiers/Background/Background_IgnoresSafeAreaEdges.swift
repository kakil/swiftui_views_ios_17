// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Background_IgnoresSafeAreaEdges: View {
    var body: some View {
        TabView {
            NavigationStack {
                VStack(spacing: 20.0) {
                    Text("Prevent from going into Nav view.")
                        .background(Color("GoldColor"))
                    
                    Spacer()
                    
                    HeaderView("",
                               subtitle: "Ignore Safe Area Edges",
                               desc: "You might have a background go into a safe area you do not want it to go. How do you prevent this?")
                    
                    Spacer()
                    
                    Text("Prevent from going into the TabView.")
                        .background(Color("GoldColor"))
                }
                .font(.title)
                .background(Color("GoldColor").opacity(0.2))
                .navigationTitle("Background")
            }
            .tabItem {
                Image(systemName: "01.square")
                Text("Color")
            }
            
            NavigationStack {
                VStack(spacing: 20.0) {
                    Text("Prevent from going into Nav view.")
                        .background(Color("GoldColor"),
                                    ignoresSafeAreaEdges: .bottom)
                    
                    Spacer()
                    
                    HeaderView("",
                               subtitle: "Ignore Safe Area Edges",
                               desc: "Try setting another edge or I found using init() also works.")
                    
                    Spacer()
                    
                    Text("Prevent from going into the TabView.")
                        .background(Color("GoldColor"),
                                    ignoresSafeAreaEdges: [])
                }
                .font(.title)
                .background(Color("GoldColor").opacity(0.2))
                .navigationTitle("Background")
            }
            .tabItem {
                Image(systemName: "02.square")
                Text("No Color")
            }
        }
    }
}

struct Background_IgnoresSafeAreaEdges_Previews: PreviewProvider {
    static var previews: some View {
        Background_IgnoresSafeAreaEdges()
    }
}
