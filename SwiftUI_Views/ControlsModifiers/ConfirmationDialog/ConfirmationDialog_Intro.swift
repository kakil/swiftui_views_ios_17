//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ConfirmationDialog_Intro: View {
    @State private var delete = false
    
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ConfirmationDialog",
                       subtitle: "Introduction",
                       desc: "Use the confirmation dialog to get feedback from the user.")
            Button("Delete", role: .destructive) {
                delete.toggle()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Spacer()
        }
        .font(.title)
        .confirmationDialog("Are you sure you want to delete?", isPresented: $delete) {
            // Add buttons here
            Button("Delete", role: .destructive) { }
        }
    }
}

struct ConfirmationDialog_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialog_Intro()
    }
}
