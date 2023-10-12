//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Alert_ChangeBack: View {
    @State private var presentingAlert = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Alert",
                       subtitle: "SwiftUI Changes Back",
                       desc: "It is good to know that SwiftUI will automatically change the property you use to show the alert back to its original value.", back: .green)
            
            Button("Show Alert") {
                presentingAlert = true
            }
            
            Text("presentingAlert: ") +
                Text(presentingAlert.description).bold()
        }
        .font(.title)
        .alert(isPresented: $presentingAlert) {
            Alert(title: Text("Look at the Boolean"))
        }
    }
}

struct Alert_ChangeBack_Previews: PreviewProvider {
    static var previews: some View {
        Alert_ChangeBack()
    }
}
