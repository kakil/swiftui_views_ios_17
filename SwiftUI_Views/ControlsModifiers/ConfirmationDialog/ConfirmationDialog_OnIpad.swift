// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct ConfirmationDialog_OnIpad: View {
    @State private var add = false

    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ConfirmationDialog",
                       subtitle: "On iPad",
                       desc: "To have the confirmationDialog work on iPad, the modifier should be on the Button that triggers it.")
            Button("Add") {
                add.toggle()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .confirmationDialog("Add to:", isPresented: $add, titleVisibility: .visible) {
                Button("None of These", role: .cancel) { }
                Button(action: {}) {
                    Label("Friends", systemImage: "person.2.fill")
                }
                Button("Family") { }
                Button("The Devil's Circle of Hell", role: .destructive) { }
            }

            Spacer()
        }
        .font(.title)
    }
}

struct ConfirmationDialog_OnIpad_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialog_OnIpad()
    }
}
