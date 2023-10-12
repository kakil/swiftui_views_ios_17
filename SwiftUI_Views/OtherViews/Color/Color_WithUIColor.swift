//
//  Color_WithUIColor.swift
//  100Views
//
//  Created by Mark Moeykens on 9/9/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Color_WithUIColor: View {
    var body: some View {
        VStack(spacing: 5) {
            HeaderView("Color",
                       subtitle: "Using UIColor",
                       desc: "It should be mentioned that the Color view can also access colors from UIColor.")
            HStack {
                Text("SwiftUI")
                    .frame(maxWidth: .infinity)
                Text("UIColor")
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal)

            
            SecondEightRows()
                .padding(.horizontal)
        }
        .font(.title)
    }
}

struct Color_WithUIColor_Previews: PreviewProvider {
    static var previews: some View {
        Color_WithUIColor()
    }
}

struct SecondEightRows: View {
    var body: some View {
        VStack(spacing: 4) {
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.gray)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(UIColor.gray))
            }
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.red)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(UIColor.red))
            }
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.green)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(.green))
            }
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.blue)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(.blue))
            }
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.orange)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(.orange))
            }
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.yellow)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(.yellow))
            }
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.pink)
                RoundedRectangle(cornerRadius: 10)
                    .stroke()
                    .overlay(Text("(None)"))
            }
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.purple)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(.purple))
            }
        }
    }
}
