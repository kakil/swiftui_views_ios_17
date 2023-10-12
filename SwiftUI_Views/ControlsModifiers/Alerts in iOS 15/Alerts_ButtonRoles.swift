// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Alerts_ButtonRoles: View {
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            HeaderView("Alerts", subtitle: "Button Roles",
                       desc: "Use button roles to override the default buttons used in alerts.",
                       back: .green)
            
            Button("Show Alert") {
                showAlert = true
            }
            
            Spacer()
        }
        .alert("Congratulations!", isPresented: $showAlert) {
            Button("Undo", role: .destructive, action: { })
            Button("OK", role: .cancel, action: { })
        } message: {
            Text("You trip is now booked.")
        }
        .font(.title)
    }
}

struct Alerts_NoCancel_Previews: PreviewProvider {
    static var previews: some View {
        Alerts_ButtonRoles()
    }
}
