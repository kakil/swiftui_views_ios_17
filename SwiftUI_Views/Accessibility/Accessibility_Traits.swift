//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Accessibility_Traits: View {
    @State private var selected = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Accessibility",
                       subtitle: "Traits",
                       desc: "You can use traits to express to the user when a button is selected or not.", back: .green)
            
            Button(action: {
                    selected.toggle()
            }, label: {
                Image(systemName: selected ? "moon.circle.fill" : "moon.circle")
                    .font(.largeTitle)
            })
            .accessibility(label: Text("Night mode"))
            .accessibility(addTraits: selected ? .isSelected : [])
        }
        .font(.title)
    }
}

struct Accessibility_Traits_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility_Traits()
    }
}
