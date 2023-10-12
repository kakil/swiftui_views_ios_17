//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Toolbar_InlineNavBar: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {

            }
            .navigationTitle("Toolbar")
            .navigationBarTitleDisplayMode(.inline)
            .font(.title)
            .toolbar {
                ToolbarItem {
                    Button(action: {}) {
                        Image(systemName: "aspectratio")
                    }
                }
                ToolbarItem {
                    Button(action: {}) {
                        Image(systemName: "camera.filters")
                    }
                }
            }
            .tint(.green)
        }
    }
}

struct Toolbar_InlineNavBar_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_InlineNavBar()
    }
}
