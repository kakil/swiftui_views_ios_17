// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct ActionSheet_OnIpad: View {
    @State private var presentingActionSheet = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("ActionSheet", subtitle: "Presenting with Bool",
                       desc: "When using an actionSheet on an iPad, you want to attach the modifier directly to the view that opens the action sheet.",
                       back: .blue, textColor: .white)

            Button("Show ActionSheet") {
                presentingActionSheet = true
            }
            .actionSheet(isPresented: $presentingActionSheet) {
                ActionSheet(title: Text("My Action Sheet"),
                            message: Text("Pick an option:"),
                buttons: [
                    .default(Text("Option 1"), action: {}),
                    .destructive(Text("Option 2"), action: {}),
                    .cancel(Text("Cancel"), action: {})
                ])
            }
            
            Spacer()
        }
        .font(.title)
    }
}

struct ActionSheet_OnIpad_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet_OnIpad()
    }
}
