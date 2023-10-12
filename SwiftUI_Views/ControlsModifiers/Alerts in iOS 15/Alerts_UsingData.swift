// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct ResultDetails {
    let message: String
    let action: String
}

struct Alerts_UsingData: View {
    @State var didError = false
    @State var resultDetails: ResultDetails?
    
    var body: some View {
        VStack {
            HeaderView("Alerts", subtitle: "Using Data",
                       desc: "Pass in a data using the presenting parameter.",
                       back: .green)
            
            Button("Start Process") {
                didError = true
                resultDetails = ResultDetails(message: "Process failed.", action: "Retry")
            }
            
            Spacer()
        }
        .alert("Results", isPresented: $didError, presenting: resultDetails) { details in
            Button(details.action) { }
            Button("Cancel", role: .cancel, action: { })
        } message: { details in
            Text("\(details.message)")
        }
        .font(.title)
    }
}

struct Alerts_UsingData_Previews: PreviewProvider {
    static var previews: some View {
        Alerts_UsingData()
    }
}
