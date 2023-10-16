//
//  kLazyVStack_Intro.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 10/16/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct kLazyVStack_Intro: View {
    var body: some View {
        VStack(spacing: 10.0) {
            HeaderView("LazyVStack",
                       subtitle: "Introductions",
                        desc: "When using the LazyVStack by itself, you won't notice much of a difference from the VStack.")
            .layoutPriority(1)
        
        Text("LazyVStack")
            LazyVStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("VStack")
            VStack(spacing: 10, content: {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            })
            .border(Color.red, width: 2)
            
            Text("Notice the LazyVStack pushes out horizontally. (No Spacers being used here.)")
        }
        .font(.title)
    }
}

#Preview {
    kLazyVStack_Intro()
}
