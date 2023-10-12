//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Image_FromSymbolsWithColor: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Image - Symbols",
                       subtitle: "Multicolor Symbols",
                       desc: "Some SF Symbols have more than one color that you can enable by using the renderingMode modifier.", back: .red)
            
            Image(systemName: "note.text.badge.plus")
                .renderingMode(.original)
                .font(.largeTitle)
            
            Text("If used in a Button, change the color with the accentColor modifier:")
                .padding(.horizontal)
            
            Button(action: {}, label: {
                Image(systemName: "note.text.badge.plus")
                    .renderingMode(.original)
                    .tint(.red)
                    .font(.largeTitle)
            })
            
            Text("Or use foregroundStyle:")
            Image(systemName: "note.text.badge.plus")
                .renderingMode(.original)
                .foregroundStyle(.purple)
                .font(.largeTitle)
        }
        .font(.title)
    }
}

struct Image_FromSymbolsWithColor_Previews: PreviewProvider {
    static var previews: some View {
        Image_FromSymbolsWithColor()
    }
}
