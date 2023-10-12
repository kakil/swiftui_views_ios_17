// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Disabled_Intro: View {
    @State private var name = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Disabled",
                       subtitle: "Introduction",
                       desc: "Use the disabled modifier to disable (or enable) controls based on some logic.")
            
            TextField("name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("Continue") {
                
            }
            .buttonStyle(.borderedProminent)
            .disabled(name.count < 3)
        }
        .font(.title)
    }
}

struct Disabled_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Disabled_Intro()
    }
}
