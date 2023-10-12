// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct ContentShape_ContentShapeKinds: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("ContentShape")
                .font(.largeTitle)
            
            Image(systemName: "trash.circle")
                .font(.system(size: 70))
                .contentShape(.contextMenuPreview, Circle())
                .contextMenu {
                    Button("Menu 1") { }
                    Button("Menu 2") { }
                }
            
            Image(systemName: "trash.square")
                .font(.system(size: 70))
                .contentShape(.contextMenuPreview, RoundedRectangle(cornerRadius: 10))
                .contextMenu {
                    Button("Menu 1") { }
                    Button("Menu 2") { }
                }
            
            Spacer()
        }
        .font(.title)
    }
}

struct ContentShape_ContentShapeKinds_Previews: PreviewProvider {
    static var previews: some View {
        ContentShape_ContentShapeKinds()
    }
}
