//  Created by Mark Moeykens on 9/28/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.

import SwiftUI

struct RefactoringBefore: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Refactoring")
                .font(.largeTitle)
            
            Text("Reusing Modifiers")
                .font(.title)
                .foregroundStyle(Color.gray)
            
            Text("You can put common modifiers on the parent views to be applied to all the child views.")
                .font(.title)
                .frame(maxWidth: .infinity)
                .foregroundStyle(Color.white)
                .padding()
                .background(Color.blue)
        }
    }
}

struct Refactoring: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Refactoring")
                .font(.largeTitle)
            
            Text("Reusing Modifiers")
                .foregroundStyle(Color.gray)
            
            Text("You can put common modifiers on the parent views to be applied to all the child views.")
                .frame(maxWidth: .infinity)
                .foregroundStyle(Color.white)
                .padding()
                .background(Color.blue)
        }
        .font(.title) // This font style will be applied to ALL text views inside the VStack.
    }
}

struct Refactoring_Previews: PreviewProvider {
    static var previews: some View {
        Refactoring()
    }
}
