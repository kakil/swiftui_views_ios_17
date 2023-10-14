//
//  KVStack_Intro_alignment.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 10/14/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KVStack_Intro_alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("VStack")
                .font(.largeTitle)
            Text("Alignment")
                .font(.title)
                .foregroundStyle(.gray)
            Text("By default, views in a VStack are center aligned.")
                .font(.title)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.blue)
            
            VStack(alignment: .leading, spacing: 40, content: {
                Text("Leading Alignment")
                    .font(.title)
                Divider()
                Image(systemName: "arrow.left")
                
            })
            .padding()
            .foregroundStyle(Color.white)
            .background(RoundedRectangle(cornerRadius: 10))
            .foregroundStyle(.blue)
            .padding()
            
            VStack(alignment: .trailing, spacing: 40) {
                Text("Trailing Alignment")
                    .font(.title)
                Divider()
                Image(systemName: "arrow.right")
            }
            .padding()
            .foregroundStyle(.white)
            .background(RoundedRectangle(cornerRadius: 10)
            .foregroundStyle(.blue))
            .padding()
        }
    }
}

#Preview {
    KVStack_Intro_alignment()
}
