// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct ConfirmationDialog_CancelButton: View {
    @State private var add = false

    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ConfirmationDialog",
                       subtitle: "Cancel Button",
                       desc: "You can use the button role to set your own cancel button.")
            Button("Add") {
                add.toggle()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            Spacer()
        }
        .font(.title)
        .confirmationDialog("Add to:", isPresented: $add, titleVisibility: .visible) {
            Button("None of These", role: .cancel) { }
            Button(action: {}) {
                Label("Friends", systemImage: "person.2.fill")
            }
            Button("Family") { }
            Button("The Devil's Circle of Hell", role: .destructive) { }
        }
    }
}

struct ConfirmationDialog_CancelButton_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialog_CancelButton()
    }
}
