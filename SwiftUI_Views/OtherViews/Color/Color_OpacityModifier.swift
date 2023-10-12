//
//  Color_OpacityModifier.swift
//  100Views
//
//  Created by Mark Moeykens on 8/23/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Color_OpacityModifier: View {
    var body: some View {
        ZStack {
            // Book Note: I like to apply opacity to background colors/images so the default light/dark comes through.
            Color.brown.opacity(0.3)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image("Opacity")
                HeaderView("Color",
                           subtitle: "Opacity Modifier",
                           desc: "You can also use the opacity modifier to add transparency. (Note: The opacity modifier can apply to any view, not just Color views.)")
                
                Text("The opacity modifier can also be applied to a custom color.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("GoldColor").opacity(0.8))
            }
        }
        .font(.title)
    }
}

struct Color_OpacityModifier_Previews: PreviewProvider {
    static var previews: some View {
        Color_OpacityModifier()
    }
}
