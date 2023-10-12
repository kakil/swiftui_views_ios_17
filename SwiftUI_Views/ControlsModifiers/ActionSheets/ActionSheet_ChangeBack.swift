//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ActionSheet_ChangeBack: View {
    @State private var presentingActionSheet = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("ActionSheet",
                       subtitle: "SwiftUI Changes Back",
                       desc: "It is good to know that SwiftUI will automatically change the property you use to show the action sheet back to its original value.", back: .blue, textColor: .white)
            
            Button("Show ActionSheet") {
                presentingActionSheet = true
            }
            
            Text("presentingActionSheet: ") +
                Text(presentingActionSheet.description).bold()
        }
        .font(.title)
        .actionSheet(isPresented: $presentingActionSheet) {
            ActionSheet(title: Text("Look at the Boolean"))
        }
    }
}

struct ActionSheet_ChangeBack_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet_ChangeBack()
    }
}
