//  Created by Mark Moeykens on 9/21/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.

import SwiftUI

struct Padding_OtherInsets: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Padding").font(.largeTitle)
            
HStack(spacing: 80) {
    VStack {
        Text("Leading")
        Image("profile")
            .padding(.leading)
            .border(.red)
    }
    VStack {
        Text("Top")
        Image("profile")
            .padding(.top)
            .border(.red)
    }
}
HStack(spacing: 80) {
    VStack {
        Text("Trailing")
        Image("profile")
            .padding(.trailing)
            .border(.red)
    }
    VStack {
        Text("Bottom")
        Image("profile")
            .padding(.bottom)
            .border(.red)
    }
}

HStack(spacing: 30) {
    VStack {
        Text("Top Trailing")
        Image("profile")
            .padding([.top, .trailing])
            .border(.red)
    }
    VStack {
        Text("Leading Bottom")
        Image("profile")
            .padding([.leading, .bottom])
            .border(.red)
    }
}
        }
        .font(.title)
    }
}

struct Padding_OtherInsets_Previews: PreviewProvider {
    static var previews: some View {
        Padding_OtherInsets()
    }
}
