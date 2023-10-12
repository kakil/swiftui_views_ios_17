// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Sheet_SwipeDisabledWithBool: View {
    @State private var presentingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            presentingSheet = true
        }
        .sheet(isPresented: $presentingSheet) {
            AgreementView(title: "Sheet",
                          subtitle: "Swipe Down Disabled with Bool")
        }
        .font(.title)
    }
}

struct AgreementView: View {
    let title: String
    let subtitle: String
    @State private var agree = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title, subtitle: subtitle,
                       desc: "Enable/disable swipe down with interactiveDismissDisabled and a bool.",
                       back: .red, textColor: .white)
                .padding(.top)
            Spacer()
            
            Toggle(isOn: $agree, label: { Text("I Agree") })
                .toggleStyle(.button)
                .tint(.red)
                .padding(.bottom)
        }
        .interactiveDismissDisabled(!agree)
    }
}

struct Sheet_SwipeDisabledWithBool_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_SwipeDisabledWithBool()
    }
}
