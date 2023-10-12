// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Alerts_Intro: View {
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            HeaderView("Alerts", subtitle: "Introduction",
                       desc: "The alert modifier can show an alert message when its bound property changes.",
                       back: .green)
            
            Button("Show Alert") {
                showAlert = true
            }
            
            Spacer()
        }
        .alert("Alert!", isPresented: $showAlert) {
            // No action/button defined
        }
        .font(.title)
    }
}

struct Alerts_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Alerts_Intro()
    }
}
