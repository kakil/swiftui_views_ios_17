// Copyright © 2023 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Sheet_HideDragIndicator: View {
    @State private var showSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            VStack(spacing: 16.0) {
                Image(systemName: "arrow.up")
                Text("Any time you have more than one detent, the drag indicator automatically shows. You can hide it though.")
                Spacer()
            }
            .padding()
            .presentationDetents([.medium, .large])
            .presentationDragIndicator(.hidden)
        }
        .font(.title)
    }
}

struct Sheet_HideDragIndicator_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_HideDragIndicator()
    }
}
