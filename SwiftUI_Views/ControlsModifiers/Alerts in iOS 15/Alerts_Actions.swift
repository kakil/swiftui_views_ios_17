// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Alerts_Actions: View {
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            HeaderView("Alerts", subtitle: "Actions",
                       desc: "Add actions as buttons to your alert.",
                       back: .green)
            
            Button("Show Alert") {
                showAlert = true
            }
            
            Spacer()
        }
        .alert("Delete Contact?", isPresented: $showAlert) {
            Button(role: .destructive) {
                // Delete action
            } label: {
                Text("Delete")
            }
        } message: {
            Text("This will permanently delete the contact.")
        }
        .font(.title)
    }
}

struct Alerts_Actions_Previews: PreviewProvider {
    static var previews: some View {
        Alerts_Actions()
    }
}
