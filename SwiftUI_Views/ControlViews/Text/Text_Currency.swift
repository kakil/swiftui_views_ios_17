// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Text_Currency: View {
    @State private var amount = 36.72

    var body: some View {
        VStack(spacing: 10) {
            HeaderView("Text",
                       subtitle: "Currency",
                       desc: "Use the format parameter with different currency codes to show the appropriate currency symbol.",
                       back: .green, textColor: .white)
            
            Text(amount, format: .currency(code: "USD"))
            Text(amount, format: .currency(code: "EUR"))
            Text(amount, format: .currency(code: "BRL"))
            Text(amount, format: .currency(code: "GBP"))
            Text(amount, format: .currency(code: "JPY"))
            Text(amount, format: .currency(code: "INR"))
        }
        .font(.title)
    }
}

struct Text_Currency_Previews: PreviewProvider {
    static var previews: some View {
        Text_Currency()
    }
}
