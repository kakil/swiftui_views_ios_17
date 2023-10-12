//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio
/*
 Note: The problem here is that we can't use more than one alignment guide with a VStack/HStack.
 This problem was solved using Preferences in OtherModifiers > Preference > Preference_WidestTextView.swift
 */

import SwiftUI

struct AlignNumbers: View {
    var body: some View {
        VStack(alignment: .column2, spacing: 0) {
            VStack(alignment: .column1, spacing: 20) {
                HStack {
                    Spacer()
                    Text("Q1")
                        .alignmentGuide(.column1) { d in
                            d[HorizontalAlignment.center]
                        }
                    Text("Q2")
//                        .alignmentGuide(.column2) { d in
//                            d[.trailing]
//                        }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.yellow)
                
                HStack {
                    Text("Electricity: ")
                    Spacer()
                    Text("$78.25")
                        .alignmentGuide(.column1) { d in
                            d[.trailing]
                        }
                    Text("$88.05")
                        .alignmentGuide(.column2) { d in
                            d[.trailing]
                        }
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Gas: ")
                    Spacer()
                    Text("$1,123.01")
                        .alignmentGuide(.column1) { d in
                            d[.trailing]
                        }
                    Text("$1,788.32")
                        .alignmentGuide(.column2) { d in
                            d[.trailing]
                        }
                }
                .padding(.horizontal)
            }
        }
    }
}
extension HorizontalAlignment {
    private enum Column1: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[HorizontalAlignment.trailing]
        }
    }
    
    private enum Column2: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[HorizontalAlignment.trailing]
        }
    }
    
    static let column1 = HorizontalAlignment(Column1.self)
    static let column2 = HorizontalAlignment(Column2.self)
}

struct AlignNumbers_Previews: PreviewProvider {
    static var previews: some View {
        AlignNumbers()
    }
}
