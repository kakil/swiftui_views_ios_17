//
//  BlendMode_Setup.swift
//  100Views
//
//  Created by Mark Moeykens on 8/26/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct BlendMode_Setup: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Blend Mode").font(.largeTitle)
            Text("Setup Code")
                .font(.title).foregroundStyle(.gray)
            Text("To demonstrate how the Blend Mode modifier works, we will be working with these two reusable subviews.")
                .frame(maxWidth: .infinity)
                .font(.title).padding()
                .background(Color.orange)
                .layoutPriority(1)
                .foregroundStyle(.white)
            
            BlueRectangle()
            YellowRectangle()
        }
    }
}

struct BlueRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundStyle(.blue)
            .frame(width: 100, height: 100)
            .shadow(radius: 5)
            .overlay(Text("Back Layer").foregroundStyle(.white))
    }
}

struct YellowRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundStyle(.yellow)
            .frame(width: 100, height: 100)
            .shadow(radius: 5)
    }
}

struct BlendMode_Setup_Previews: PreviewProvider {
    static var previews: some View {
        BlendMode_Setup()
    }
}
