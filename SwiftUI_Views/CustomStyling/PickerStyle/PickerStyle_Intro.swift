//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct PickerStyle_Intro: View {
    @State private var selection = 1
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HeaderView("Picker Style",
                           subtitle: "Introduction",
                           desc: "You use the picker style to style a wheel-type picker or a segmented control (tabs).")
                
                Text("Automatic picker style")
                Picker(selection: $selection, label: Text("")) {
                    Text("California").tag(0)
                    Text("Utah").tag(1)
                    Text("Vermont").tag(2)
                }
                .pickerStyle(.automatic)
                
                Text("Wheel pick style")
                Picker(selection: $selection, label: Text("")) {
                    Text("California").tag(0)
                    Text("Utah").tag(1)
                    Text("Vermont").tag(2)
                }
                .pickerStyle(.wheel)
                
                Text("Segmented picker style")
                Picker(selection: $selection, label: Text("")) {
                    Text("California").tag(0)
                    Text("Utah").tag(1)
                    Text("Vermont").tag(2)
                }
                .pickerStyle(.segmented)
                .padding(.bottom)
            }
            .font(.title)
        }
    }
}

struct PickerStyle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        PickerStyle_Intro()
    }
}
