//
//  MapView.swift
//  Convenience
//
//  Created by Ajioka Fumito on 2020/03/11.
//  Copyright © 2020 Ajioka Fumito. All rights reserved.
//

import SwiftUI
import MapKit
import CoreLocation
import UIKit

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(
            latitude: 35.300781, longitude: 136.782708
        ))
    }
}
