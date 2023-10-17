//
//  kLazyVStack_alignment.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 10/16/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct kLazyVStack_alignment: View {
    var body: some View {
        VStack(spacing: 10.0) {
            HeaderView("LazyVStack",
                       subtitle: "Alignment",
                       desc: "Since LazyVStacks are push-out views (horizontally) the alignment parameter could be useful.")
            
            Text("Leading")
            
            LazyVStack(alignment: .leading, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("Trailing")
            
            LazyVStack(alignment: .trailing, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
        }
        .font(.title)
    }
}

#Preview {
    kLazyVStack_alignment()
}
