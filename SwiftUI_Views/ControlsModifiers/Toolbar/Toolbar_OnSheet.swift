//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Toolbar_OnSheet: View {
    @State private var presentingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            presentingSheet = true
        }
        .sheet(isPresented: $presentingSheet) {
            ConfirmationView()
        }
        .font(.title)
    }
}
struct ConfirmationView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
            }
            .padding(.top)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Confirm", action: { dismiss() })
                }
                ToolbarItem(placement: .destructiveAction) {
                    Button("Delete", action: { dismiss() })
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel", action: { dismiss() })
                }
            }
        }
    }
}

struct Toolbar_OnSheet_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_OnSheet()
    }
}
