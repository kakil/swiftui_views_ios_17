//  Created by Mark Moeykens on 8/18/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Popover_FromBool: View {
    @State private var showPopover = false
    
    var body: some View {
        ZStack {
            Color("Theme1Background")
            
            Button(action: {
                self.showPopover = true
            }, label: {
                Image(systemName: "questionmark.circle.fill")
                    .font(.largeTitle)
            }).popover(isPresented: $showPopover, arrowEdge: .top) {
                // This will show in the Popover
                VStack(spacing: 20) {
                    Text("Popover")
                        .font(.largeTitle)
                    Text("Show from Bool")
                        .font(.title).foregroundStyle(.gray)
                    Text("By changing the State variable, you can trigger the Popover to show")
                        .frame(maxWidth: .infinity)
                        .padding().font(.title)
                        .background(Color.blue)
                        .foregroundStyle(.white)
                }
                .fixedSize(horizontal: false, vertical: true)
                .frame(height: 210)
            }
        }
        .ignoresSafeArea()
    }
}

struct Popover_FromBool_Previews: PreviewProvider {
    static var previews: some View {
        Popover_FromBool()
        //.previewDevice(PreviewDevice(rawValue: "iPad Pro (9.7-inch)"))
    }
}
