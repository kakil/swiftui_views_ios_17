// Copyright © 2023 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Sheet_CustomSizes: View {
    @State private var showSheet = false
    
    var body: some View {
        Button("Show Sheet with Custom Sizes") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            VStack(spacing: 16.0) {
                Text("The first stop is at 200.")
                Image(systemName: "arrow.up")
                Text("Slide up to go to 75% of the screen height.")
            }
            .padding()
            .presentationDetents([.fraction(0.75), .height(200)])
        }
        .font(.title)
    }
}

struct Sheet_CustomSizes_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_CustomSizes()
    }
}
