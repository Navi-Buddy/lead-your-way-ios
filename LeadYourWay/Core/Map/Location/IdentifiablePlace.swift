//
//  IdentifiablePlace.swift
//  LeadYourWay
//
//  Created by user245074 on 9/27/23.
//

import Foundation
import MapKit
import SwiftUI



struct IdentifiablePlace: Identifiable {
    let id: UUID
    let location: CLLocationCoordinate2D
    init(id: UUID = UUID(), lat: Double, long: Double) {
        self.id = id
        self.location = CLLocationCoordinate2D(latitude: lat, longitude: long)
    }
}


struct Annotation: View {
    let place: IdentifiablePlace
    @State var region : MKCoordinateRegion
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [place]){ place in
            MapMarker(coordinate: place.location, tint: Color.green)
            
        }
    }
}
