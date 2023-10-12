//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Preference_Intro: View {
    @State private var intro = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Preference",
                       subtitle: "Introduction",
                       desc: "The preference modifier provides a way to pass a value from a child view to a parent view. There are many steps involved as you can see in the code.", back: .green)
            // 4. This Text view will be redrawn once the @State property changes
            Text("Hello, " + intro)
                .font(Font.largeTitle.weight(.bold))
                .preference(key: NamePreferenceKey.self, value: "Mark")
            
            Text("The NamePreferenceKey preference key will concatenate all values provided by the preference modifiers in this view.")
                // 2. Set a value to your preference key
                .preference(key: NamePreferenceKey.self, value: " and Chris")
        }
        .font(.title)
        // 3. Detect when it changes and assign it to a binding (to trigger a redraw)
        .onPreferenceChange(NamePreferenceKey.self) { value in
            intro = value
        }
    }
}

// 1. Create a PreferenceKey
struct NamePreferenceKey: PreferenceKey {
    static var defaultValue = ""
    
    // Many child views can provide a preference value.
    // It's up to you to figure out how to choose which one to use.
    static func reduce(value: inout String, nextValue: () -> String) {
        // In this case I'm appending all the values to each other.
        value = value + nextValue()
    }
}

struct Preference_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Preference_Intro()
    }
}
