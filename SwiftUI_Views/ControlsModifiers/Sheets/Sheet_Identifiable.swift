//
//  Sheet_Identifiable.swift
//  100Views
//
//  Created by Mark Moeykens on 8/18/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

// 1. Create an Identifiable struct to hold the data
struct DetailInfo: Identifiable {
    var id = UUID() // Conform to Identifiable
    let image: Image
}

struct Sheet_Identifiable: View {
    // 2. Create State var for the data
    @State private var details: DetailInfo? = nil
    
    var body: some View {
        Button("Show Details") {
            // 3. Trigger showing the sheet
            details = DetailInfo(image: Image(systemName: "star.circle"))
        }
        // 4. Listen for State variable changes to non-nil
        .sheet(item: $details) { detailInfo in
            DetailSheet(details: detailInfo)
        }
    }
}

struct DetailSheet: View {
    @Environment(\.dismiss) var dismiss // iOS 15+
    let details: DetailInfo
    
    var body: some View {
        VStack(spacing: 20) {
            details.image
                .font(.largeTitle)
                .foregroundStyle(.red)
            HeaderView("Sheet", subtitle: "Presenting with Identifiable",
                       desc: "By changing the State property to a non nil value, you can trigger the Sheet to show.",
                       back: .red, textColor: .white)
            Spacer()
            Button("Dismiss") {
                dismiss()
            }
            .tint(.red)
            .padding(.bottom)
        }
        .padding(.top, 40)
        .font(.title)
    }
}

struct Sheet_Identifiable_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_Identifiable()
    }
}
