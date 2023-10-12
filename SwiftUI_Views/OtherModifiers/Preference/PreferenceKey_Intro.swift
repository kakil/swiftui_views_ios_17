//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct PreferenceKey_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("PreferenceKey",
                       subtitle: "Introduction",
                       desc: "A custom preference key is something you create so you can use the preferences modifier. You tell it how to handle values being set to the preference key.", back: .green)
            HStack {
                Text("Electricity:")
                Text("$78.25")
                    .preference(key: CustomPreferenceKey.self, value: 78.25)
            }
            HStack {
                Text("Gas:")
                Text("$1,123.01")
                    .preference(key: CustomPreferenceKey.self, value: 1123.01)
            }
        }
        .font(.title)
    }
}

struct CustomPreferenceKey: PreferenceKey {
    static var defaultValue = 0.0
    // Many child views can provide a preference value.
    // It's up to you to figure out how to handle them.
    static func reduce(value: inout Double, nextValue: () -> Double) {
        // In this case I'm adding all the values to each other.
        value = value + nextValue()
    }
}

struct PreferenceKey_Intro_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceKey_Intro()
    }
}
