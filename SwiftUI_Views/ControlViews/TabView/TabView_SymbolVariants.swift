//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct TabView_SymbolVariants: View {
    var body: some View {
        TabView {
            VStack(spacing: 20.0) {
                HeaderView("TabView",
                           subtitle: "Symbol Variants",
                           desc: "The platform will change the SF symbol you are using to filled or not filled depending on the context. \nFor example, in iOS it will use filled versions of the symbols you choose for TabViews.")
                
                Text("Original SF Symbols:")
                Image(systemName: "star")
                Image(systemName: "moon")
                Image(systemName: "sun.min")
                
            }.tabItem {
                Image(systemName: "star")
                Text("Home")
            }
            Text("Second Screen").tabItem {
                Image(systemName: "moon")
                Text("Night")
            }
            Text("Third Screen").tabItem {
                Image(systemName: "sun.min")
                Text("Day")
            }
        }
        .font(.title)
    }
}

struct TabView_SymbolVariants_Previews: PreviewProvider {
    static var previews: some View {
        TabView_SymbolVariants()
    }
}
