//
//  InsetMapView.swift
//  AnimalsApp
//
//  Created by Amr Hesham on 17/06/2021.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    let animal: Animal
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    } // HStack
                    .padding()
                } // Navigation
                .padding(12), alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static let animals: [Animal]? = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            InsetMapView(animal: animals!.first!)
        }
    }
}
