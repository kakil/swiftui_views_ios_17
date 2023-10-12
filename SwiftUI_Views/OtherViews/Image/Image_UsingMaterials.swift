//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Image_UsingMaterials: View {
    var body: some View {
        ZStack {
            Image("canyonlands")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 20) {
                HeaderView("Image - Symbols",
                           subtitle: "Using Materials",
                           desc: "Materials are also ShapeStyles which means they too can be applied to symbols.", back: .red).background(.bar)
                HStack {
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.secondary)
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.tertiary)
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.quaternary)
                }
                .font(.system(size: 90)).padding()
                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 20))
                HStack {
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.ultraThinMaterial)
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.regularMaterial)
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.thickMaterial)
                }
                .font(.system(size: 90)).padding()
                .background(RoundedRectangle(cornerRadius: 20)
                                .strokeBorder(.thinMaterial, lineWidth: 8))
            }
            .font(.title)
        }
    }
}

struct Image_UsingMaterials_Previews: PreviewProvider {
    static var previews: some View {
        Image_UsingMaterials()
    }
}
