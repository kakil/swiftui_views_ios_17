// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Disabled_Containers: View {
    @State private var agree = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Disabled",
                       subtitle: "Containers",
                       desc: "The disabled modifier can be used to disable many controls at one time.")
            
            Toggle("Agree to Terms", isOn: $agree)
            .padding()
            
            GroupBox {
                Text("Registration")
                    .fontWeight(.semibold)
                
                TextField("name", text: .constant(""))
                    .textFieldStyle(.roundedBorder)
                
                Button("Continue") { }
                .buttonStyle(.borderedProminent)
            }
            .disabled(agree == false)
            .padding()
        }
        .font(.title)
    }
}

struct Disabled_Containers_Previews: PreviewProvider {
    static var previews: some View {
        Disabled_Containers()
    }
}
