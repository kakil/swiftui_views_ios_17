//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct OnPreferenceChange_Intro: View {
    @State private var total = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("OnPreferenceChange",
                       subtitle: "Introduction",
                       desc: "To use a value from a preference key, you can use the onPreferenceChange modifier to set a local property every time it changes.", back: .green)
            HStack {
                Text("Electricity:")
                Text("$78")
                    .preference(key: CustomPreferenceKey.self, value: 78)
            }
            HStack {
                Text("Gas:")
                Text("$1,123")
                    .preference(key: CustomPreferenceKey.self, value: 1123)
            }
            Text("Total: $\(Int(total))").bold()
        }
        .font(.title)
        .onPreferenceChange(CustomPreferenceKey.self, perform: { value in
            total = value
        })
    }
}

struct OnPreferenceChange_Intro_Previews: PreviewProvider {
    static var previews: some View {
        OnPreferenceChange_Intro()
    }
}
