// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct AllowHitTesting_Intro: View {
    @State private var zoomIn = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("AllowsHitTesting",
                       subtitle: "Introduction",
                       desc: "If you want a tap to go 'through' a view to the one below, you can disable it from receiving taps (hits).")
            
            Image("banff")
                .resizable()
                .aspectRatio(1, contentMode: zoomIn ? .fill : .fit)
                .onTapGesture {
                    zoomIn.toggle()
                }
                .overlay(alignment: .bottom) {
                    Rectangle()
                        .fill(LinearGradient(colors: [Color.clear, Color.black],
                                             startPoint: .top,
                                             endPoint: .bottom))
                        .overlay {
                            Text("Fairmont Hotel at Banff")
                                .foregroundStyle(.white)
                        }
                        .frame(height: 75)
                        .allowsHitTesting(false)
                }
        }
        .font(.title)
    }
}

struct AllowHitTesting_Intro_Previews: PreviewProvider {
    static var previews: some View {
        AllowHitTesting_Intro()
    }
}
