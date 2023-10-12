//  Created by Mark Moeykens on 8/18/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Sheet_PresentingWithBool: View {
    // 1. Create a State variable to control presenting the sheet
    @State private var presentingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            // 2. Trigger presenting the sheet
            presentingSheet = true
        }
        .font(.title)
        // 3. Listen for State variable changes to true
        .sheet(isPresented: $presentingSheet) {
            ModalView(title: "Sheet",
                      subtitle: "Presenting with Bool")
        }
    }
}
struct ModalView: View {
    @Environment(\.dismiss) var dismiss
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title).font(.largeTitle)
            Text(subtitle).foregroundStyle(.gray)
            Text("By changing the State variable, you can trigger the Sheet to show")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundStyle(.white)
            Spacer()
            Button("Dismiss") {
                dismiss()
            }
            .tint(.red)
            .padding(.bottom)
        }
        .padding(.top)
        .font(.title)
    }
}

struct Sheet_PresentingWithBool_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_PresentingWithBool()
    }
}
