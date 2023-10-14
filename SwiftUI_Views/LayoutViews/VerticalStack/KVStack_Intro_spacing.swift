//
//  KVStack_Intro_spacing.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 10/14/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KVStack_Intro_spacing: View {
    var body: some View {
        VStack(spacing: 80) {
            Text("VStack")
                .font(.largeTitle)
            
            Text("Spacing")
                .font(.title)
                .foregroundStyle(.gray)
            
            Text("The VStack initializer allows you to set the spacing between all the views inside the VStack")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue).font(.title)
                .foregroundStyle(.white)
            
            Image(systemName: "arrow.up.and.down.circle.fill")
                .font(.largeTitle)
            
            Text("The spacing here between all of these views is 80")
                .font(.title)
                .padding()
            
            
        }
    }
}

#Preview {
    KVStack_Intro_spacing()
}
