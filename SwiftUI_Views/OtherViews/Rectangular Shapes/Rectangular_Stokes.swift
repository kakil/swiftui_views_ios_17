//
//  Rectangular_Stokes.swift
//  100Views
//
//  Created by Mark Moeykens on 7/13/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Rectangular_Stokes : View {
    var body: some View {
        VStack(spacing: 25) {
            Text("Rectangular Shapes")
                .font(.largeTitle)
            
            Rectangle()
                .stroke(Color.blue)
                .padding()
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.blue, lineWidth: 20)
                .padding()
            
            RoundedRectangle(cornerRadius: 25)
                /* dash parameter
                 The 15 represents the length of the dash
                 The 25 represents the length in between dashes
                 */
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10,
                                                       lineCap: CGLineCap.round,
                                                       dash: [15, 25]))
                .padding()
        }
    }
}

struct Rectangular_Stokes_Previews : PreviewProvider {
    static var previews: some View {
        Rectangular_Stokes()
    }
}
