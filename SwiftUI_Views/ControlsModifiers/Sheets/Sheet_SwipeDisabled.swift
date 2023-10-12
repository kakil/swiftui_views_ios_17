// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Sheet_SwipeDisabled: View {
    @State private var presentingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            presentingSheet = true
        }
        .sheet(isPresented: $presentingSheet) {
            SheetView(title: "Sheet",
                      subtitle: "Swipe Down Disabled")
        }
        .font(.title)
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title, subtitle: subtitle,
                       desc: "Add the interactiveDismissDisabled modifier to prevent swiping down to dismiss on the sheet.",
                       back: .red, textColor: .white)
                .padding(.top)
            Spacer()
            Button("Dismiss") {
                dismiss()
            }
            .tint(.red)
            .padding(.bottom)
        }
        .interactiveDismissDisabled()
    }
}

struct Sheet_SwipeDisabled_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_SwipeDisabled()
    }
}
