//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI
import MapKit

struct Maps_Location: View {
    @State private var position: MapCameraPosition = .automatic
    
    private let toronto = CLLocationCoordinate2D(latitude: 43.6532,
                                                 longitude: -79.3832)
    private let london = CLLocationCoordinate2D(latitude: 51.5074,
                                                longitude: -0.1278)
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("MapKit",
                       subtitle: "Location",
                       desc: "Use the latitude and longitude to set a location using the CLLocationCoordinate2D object.",
                       back: .green)
            HStack(spacing: 20) {
                Button("Go to Toronto") { position = .item(MKMapItem(placemark: .init(coordinate: toronto))) }
                Button("Go to London") { position = .item(MKMapItem(placemark: .init(coordinate: london))) }
            }
            
            Map(position: $position)
                .ignoresSafeArea(edges: .bottom)
        }
        .font(.title)
    }
}

struct Maps_Location_Previews: PreviewProvider {
    static var previews: some View {
        Maps_Location()
    }
}
