// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct FullScreenCover_OverBars: View {
    @State private var showDetailView = false
    
    var body: some View {
        TabView {
            NavigationStack {
                VStack(spacing: 20) {
                    HeaderView("",
                               subtitle: "Over Bars",
                               desc: "A fullScreenCover will overlap navigation and tab bars.",
                               back: .blue, textColor: .white)
                    
                    Spacer()
                    
                    Button(action: {
                        showDetailView = true
                    }, label: {
                        Text("Show Details")
                    })
                    
                    Spacer()
                }
                .font(.title)
                .fullScreenCover(isPresented: $showDetailView) {
                    FullScreenCoverDetailView()
                }
                .navigationTitle("FullScreenCover")
            }
            .tabItem {
                Label("Full Screen", systemImage: "rectangle.fill.on.rectangle.fill")
            }
        }
    }
}

struct FullScreenCover_OverBars_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCover_OverBars()
    }
}
