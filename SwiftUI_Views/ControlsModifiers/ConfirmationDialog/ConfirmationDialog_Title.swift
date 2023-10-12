//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ConfirmationDialog_Title: View {
    @State private var add = false
    
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ConfirmationDialog",
                       subtitle: "Title Visibility",
                       desc: "Add the titleVisibility parameter to show/hide the title. By default, it is set to automatic which may or may not show it.")
            Button("Add") {
                add.toggle()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Spacer()
        }
        .font(.title)
        .confirmationDialog("Add to:", isPresented: $add, titleVisibility: .visible) {
            Button("Family") { }
            Button("Friends") { }
            Button("Work") { }
            Button("The Devil's Circle of Hell", role: .destructive) { }
        }
    }
}

struct ConfirmationDialog_Title_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialog_Title()
    }
}
