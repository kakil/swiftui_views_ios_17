// Copyright © 2023 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Sheet_PresentationBackground: View {
    @State private var showSheet = false
    
    var body: some View {
        ZStack {
            Image("mountain.bg")
                .resizable()
                .ignoresSafeArea()
            
            Button("Show Sheet") {
                showSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
        .sheet(isPresented: $showSheet) {
            VStack(spacing: 16.0) {
                Text("You can add different styles to the sheet, such as this material. The corner radius can also be customized now.")
                    .multilineTextAlignment(.center)
            }
            .padding()
            .presentationDetents([.medium, .large])
            .presentationBackground(.thinMaterial)
            .presentationCornerRadius(80)
        }
        .font(.title)
    }
}

struct Sheet_PresentationBackground_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_PresentationBackground()
    }
}
