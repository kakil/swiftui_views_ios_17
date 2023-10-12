//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Toolbar_PrincipalPlacement: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Divider()
                Spacer()
            }
            .font(.title)
            .navigationTitle("Nav Bar Title")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack(spacing: 0) {
                        Text("My List")
                            .bold()
                        Button(action: {}, label: {
                            Text("Scroll to Top")
                            Image(systemName: "chevron.up")
                        })
                    }
                }
            }
            .tint(.green)
        }
    }
}

struct Toolbar_PrincipalPlacement_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_PrincipalPlacement()
    }
}
