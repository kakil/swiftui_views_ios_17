//
//  Color_WithUIColorSystem.swift
//  100Views
//
//  Created by Mark Moeykens on 9/10/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Color_WithUIColorSystem: View {
    var body: some View {
        VStack(spacing: 5) {
            HeaderView("Color",
                       subtitle: "Using UIColor.system",
                       desc: "Using UIColor.system will give you an even wider range of grays that will change for light and dark modes.")
                .layoutPriority(1)
            
            Group {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(UIColor.systemGray))
                    .overlay(Text("systemGray"))
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(UIColor.systemGray2))
                    .overlay(Text("systemGray2"))
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(UIColor.systemGray3))
                    .overlay(Text("systemGray3"))
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(UIColor.systemGray4))
                    .overlay(Text("systemGray4"))
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(UIColor.systemGray5))
                    .overlay(Text("systemGray5"))
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(UIColor.systemGray6))
                    .overlay(Text("systemGray6"))
            }
            .padding(.horizontal)
            .foregroundStyle(.black)
        }
        .font(.title)
    }
}

struct Color_WithUIColorSystem_Previews: PreviewProvider {
    static var previews: some View {
        Color_WithUIColorSystem()
    }
}
