//
//  MapView.swift
//  Africa
//
//  Created by Ege Aydemir on 17.10.2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCordinates, span: mapZoomLevel)

        return mapRegion
    }()
    let locations: [nationalParkLocation] = Bundle.main.decode("locations.json")
    
    //MARK: BODY
    var body: some View {
        //MARK: No1 Basic Map
//        Map(coordinateRegion: $region)
        //MARK: No2 Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations,
            annotationContent: { item in
            //(A) PIN: OLD STYLE (always static)
            MapPin(coordinate: item.location, tint: .accentColor)
        })
    }
}

//MARK: PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
