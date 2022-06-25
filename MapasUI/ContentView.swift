//
//  ContentView.swift
//  MapasUI
//
//  Created by MAC30 on 23/06/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -12.04318, longitude: -77.02824),
    span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    )
    
    private let places: [Location] = [
        Location(coordinate: CLLocationCoordinate2D(latitude: -12.04318, longitude: -77.02824))
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places, annotationContent: { place in MapPin(coordinate: place.coordinate, tint: .green)
        })
    }
}

struct Location: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
