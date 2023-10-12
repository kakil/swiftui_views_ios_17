//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Preference_ReduceFunction: View {
    @State private var highestValue = 0
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Preference",
                       subtitle: "Reduce Function",
                       desc: "The reduce function is where you decide how to handle multiple preference values. Do you concatenate them? Do you sum them up? Do you pick the highest or lowest value?", back: .green)
            HStack {
                ForEach(33 ..< 38) { item in
                    Image(systemName: "\(item).circle")
                        .preference(key: GetHighestValue.self, value: item)
                }
            }
            .onPreferenceChange(GetHighestValue.self) { value in
                highestValue = value
            }
            
            Text("Highest Number: \(highestValue)")
                .font(.title3)
        }
        .font(.title)
    }
}

struct GetHighestValue: PreferenceKey {
    static var defaultValue = 0
    
    static func reduce(value: inout Int, nextValue: () -> Int) {
        value = value > nextValue() ? value : nextValue()
    }
}

struct Preference_ReduceFunction_Previews: PreviewProvider {
    static var previews: some View {
        Preference_ReduceFunction()
    }
}
