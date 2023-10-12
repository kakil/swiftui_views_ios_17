// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct CompositingGroup_OneView: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView("CompositingGroup", subtitle: "One View", desc: "Composting means to combine two or more things to make one thing. Use this modifier to combine views to make one view.")
            
            TwoCircles()
                .opacity(0.5) // Apply to each view within
                .shadow(color: Color.black, radius: 3)
            
            TwoCircles()
                .compositingGroup() // Make into one view
                .opacity(0.5)
                .shadow(color: Color.black, radius: 3)
        }
        .font(.title)
    }
}

struct TwoCircles: View {
    var body: some View {
        HStack(spacing: -60.0) {
            Circle()
                .foregroundStyle(.red)
            Circle()
                .foregroundStyle(.green)
        }
        .frame(height: 160)
    }
}

struct CompositingGroup_OneView_Previews: PreviewProvider {
    static var previews: some View {
        CompositingGroup_OneView()
    }
}
