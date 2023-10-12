//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Sheet_Background: View {
    @State private var presentingSheet = false

    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("Sheet",
                       subtitle: "Background",
                       desc: "There doesn't seem to be anything we can do to make the background semi-transparent.")
            
            Button("Show Sheet") {
                presentingSheet.toggle()
            }
        }
        .font(.title)
        .sheet(isPresented: $presentingSheet) {
            ZStack {
                Color.clear
                    .background(.thinMaterial)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Sheet!")
                }
//                .background(.thinMaterial)
            }
        }
    }
}

struct Sheet_Background_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_Background()
    }
}
