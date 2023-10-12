//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Toolbar_OnKeyboard: View {
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 20.0) {
            TextField("add name", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
        .font(.title)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button(action: { }) {
                    Image(systemName: "questionmark.square")
                }
                .tint(.green)
            }
        }
    }
}

struct Toolbar_OnKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_OnKeyboard()
            .preferredColorScheme(.dark)
    }
}
