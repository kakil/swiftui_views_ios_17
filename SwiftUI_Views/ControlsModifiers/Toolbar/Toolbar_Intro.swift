//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Toolbar_Intro: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {

            }
            .navigationTitle("Toolbar")
            .font(.title)
            .toolbar {
                ToolbarItem {
                    Button(action: {}) {
                        Image(systemName: "aspectratio")
                    }
                }
            }
            .tint(.green)
        }
    }
}

struct Toolbar_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_Intro()
    }
}
