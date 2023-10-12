// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Sheet_DatePicker_Dismiss: View {
    @State private var presentingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            presentingSheet = true
        }
        .font(.title)
        .sheet(isPresented: $presentingSheet) {
            DateSheetView()
        }
    }
}
struct DateSheetView: View {
    @State private var showPopover = false

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            DatePicker("Pick a Date", selection: Binding.constant(Date()))
                .padding()
            
            Spacer()
            
            Button("Dismiss") {
                dismiss()
            }
        }
        .padding(.top)
        .font(.title)
    }
}

struct Sheet_DatePicker_Dismiss_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_DatePicker_Dismiss()
    }
}
