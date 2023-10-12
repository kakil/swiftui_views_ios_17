// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Shadow_Style_Drop: View {
    let mainColor = Color("Theme1Background")
    private var raisedHighlight: ShadowStyle {
        ShadowStyle.drop(radius: 3, x: 3, y: 3)
    }
    private var raisedShadow: ShadowStyle {
        ShadowStyle.drop(color: .white, radius: 3, x: -3, y: -3)
    }
    private var depressedHighlight: ShadowStyle {
        ShadowStyle.drop(color: .white, radius: 5, x: 3, y: 3)
    }
    private var depressedShadow: ShadowStyle {
        ShadowStyle.drop(radius: 3, x: -3, y: -3)
    }
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            
            VStack(spacing: 50.0) {
                RoundedRectangle(cornerRadius: 16)
                    .fill(
                        mainColor
                            .shadow(raisedShadow)
                            .shadow(raisedHighlight)
                    )
                
                RoundedRectangle(cornerRadius: 16)
                    .fill(
                        mainColor
                            .shadow(depressedShadow)
                            .shadow(depressedHighlight)
                    )
            }.padding(50)
        }.font(.title)
    }
}

struct Shadow_Style_Drop_Previews: PreviewProvider {
    static var previews: some View {
        Shadow_Style_Drop()
    }
}
