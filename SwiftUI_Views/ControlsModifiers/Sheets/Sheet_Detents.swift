// Copyright © 2023 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Sheet_Detents: View {
    @State private var showSheet = false
    
    var body: some View {
        Button("Show Half Sheet") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            VStack(spacing: 16.0) {
                Text("Using a medium and large detent to present this sheet.")
                Image(systemName: "arrow.up")
                Text("Slide up to go from medium to large detent.")
            }
            .padding()
            .presentationDetents([.medium, .large])
        }
        .font(.title)
    }
}

struct Sheet_Detents_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_Detents()
    }
}
