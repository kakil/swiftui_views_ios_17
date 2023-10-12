// Copyright © 2023 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Rectangular_UnevenCorners: View {
    var body: some View {
        VStack {
            HStack {
                UnevenRoundedRectangle(topLeadingRadius: .infinity,
                                       bottomLeadingRadius: 0,
                                       bottomTrailingRadius: 100,
                                       topTrailingRadius: 0)
                .fill(.blue.gradient)
                UnevenRoundedRectangle(topLeadingRadius: 0,
                                       bottomLeadingRadius: 100,
                                       bottomTrailingRadius: 0,
                                       topTrailingRadius: .infinity)
                .fill(.green.gradient)
            }
            HStack {
                UnevenRoundedRectangle(topLeadingRadius: 0,
                                       bottomLeadingRadius: .infinity,
                                       bottomTrailingRadius: 0,
                                       topTrailingRadius: 100)
                .fill(.blue)
                UnevenRoundedRectangle(topLeadingRadius: 100,
                                       bottomLeadingRadius: 0,
                                       bottomTrailingRadius: .infinity,
                                       topTrailingRadius: 0)
                .fill(.green)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    Rectangular_UnevenCorners()
}
