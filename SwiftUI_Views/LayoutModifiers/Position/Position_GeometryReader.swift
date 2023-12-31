//
//  Position_GeometryReader.swift
//  100Views
//
//  Created by Mark Moeykens on 9/21/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Position_GeometryReader: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Position")
            Text("Within GeometryReader").font(.title).foregroundStyle(.gray)
            Text("Relative positioning within a geometry reader will work best for all device sizes.")
                .frame(maxWidth: .infinity)
                .padding().font(.title)
                .background(Color.purple)
                .foregroundStyle(.white)
            
            GeometryReader { geometry in
                ZStack {
                    Image(systemName: "1.circle.fill")
                        .foregroundStyle(.red)
                        .position(x: 20, y: 20)
                    
                    Image(systemName: "2.circle.fill")
                        .foregroundStyle(.yellow)
                        .position(x: geometry.size.width - 20, y: 20)
                    
                    Image(systemName: "plus.circle")
                        .foregroundStyle(.purple)
                        .position(x: geometry.size.width / 2,
                                  y: geometry.size.height / 2)
                    
                    Image(systemName: "3.circle.fill")
                        .foregroundStyle(.green)
                        .position(x: 20, y: geometry.size.height - 20)
                    
                    Image(systemName: "4.circle.fill")
                        .foregroundStyle(.orange)
                        .position(x: geometry.size.width - 20,
                                  y: geometry.size.height - 20)
                }
            }.border(Color.purple, width: 5)
        }
        .font(.largeTitle)
    }
}

struct Position_GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        Position_GeometryReader()
    }
}
