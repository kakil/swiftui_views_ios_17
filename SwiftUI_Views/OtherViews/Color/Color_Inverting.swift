//  Created by Mark Moeykens on 8/25/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Color_Inverting: View {
    var body: some View {
        VStack(spacing: 5) {
            HeaderView("Color",
                       subtitle: "Inverting",
                       desc: "Using the colorInvert modifier you can increase your choices from the system color pallet.")
                .font(.title)
                .layoutPriority(1)
            
            HStack {
                Text("System")
                    .frame(maxWidth: .infinity)
                Text("Inverted")
                    .frame(maxWidth: .infinity)
            }
            .font(.title)
            
            Group {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.gray)
                        .overlay(Text("Gray").foregroundStyle(.black))
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.gray)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.red)
                        .overlay(Text("Red").foregroundStyle(.black))
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.red)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.green)
                        .overlay(Text("Green").foregroundStyle(.black))
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.green)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.blue)
                        .overlay(Text("Blue").foregroundStyle(.black))
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.blue)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.orange)
                        .overlay(Text("Orange").foregroundStyle(.black))
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.orange)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.yellow)
                        .overlay(Text("Yellow").foregroundStyle(.black))
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.yellow)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.pink)
                        .overlay(Text("Pink").foregroundStyle(.black))
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.pink)
                        .colorInvert()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.purple)
                        .overlay(Text("Purple").foregroundStyle(.black))
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.purple)
                        .colorInvert()
                }
            }.padding(.horizontal)
        }
    }
}

struct Color_Inverting_Previews: PreviewProvider {
    static var previews: some View {
        Color_Inverting()
    }
}
