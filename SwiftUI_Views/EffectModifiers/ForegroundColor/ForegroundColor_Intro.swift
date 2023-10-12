//
//  ForegroundColor_Intro.swift
//  100Views
//
//  Created by Mark Moeykens on 8/25/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct ForegroundColor_Intro: View {
    var body: some View {
        VStack(spacing: 10) {
            Group {
                Text("Foreground Color").font(.largeTitle)
                Text("Introduction").font(.title).foregroundStyle(.gray)
                Text("Use foregroundStyle to change the color of text, shapes and images.")
                    .frame(maxWidth: .infinity)
                    .font(.title).padding()
                    .background(Color.green)
                    .foregroundStyle(.white)
                
                Text("Shapes")
                Rectangle()
                    .foregroundStyle(.green)
                    .frame(width: 150, height: 50)
                
                Text("Controls (changes text within)")
                Button(action: {}) {
                    Text("Foreground Color on Button")
                }
                .padding()
                .foregroundStyle(.green)
                
                Text("System images")
                Image(systemName: "eyedropper.full")
                    .font(.largeTitle)
                    .foregroundStyle(.green)
            }
            
            Text("Photos (does nothing)")
            Image("yosemite")
                .foregroundStyle(.green)
            
            Text("But will change text in overlay modifier")
            Image("yosemite")
                .opacity(0.2)
                .overlay(Text("Yosemite"))
                .foregroundStyle(.green)
        }
        .minimumScaleFactor(0.5)
    }
}

struct ForegroundColor_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundColor_Intro()
    }
}
