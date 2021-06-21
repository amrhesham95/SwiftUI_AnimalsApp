//
//  LocationModel.swift
//  AnimalsApp (iOS)
//
//  Created by Amr Hesham on 21/06/2021.
//

import Foundation
import MapKit

struct NationalParkLocation: Identifiable, Codable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // Computed Property
    
    var location: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
