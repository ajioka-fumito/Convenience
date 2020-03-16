//
//  LocationManagerView.swift
//  Convenience
//
//  Created by Ajioka Fumito on 2020/03/11.
//  Copyright © 2020 Ajioka Fumito. All rights reserved.
//

import SwiftUI

struct LocationManagerView: View {

    @ObservedObject var locationManager = LocationManager()

    var userLatitude: String {
        return "\(locationManager.lastLocation?.coordinate.latitude ?? 0)"
    }
    
    var userLongitude: String {
        return "\(locationManager.lastLocation?.coordinate.longitude ?? 0)"
    }

    var body: some View {
        VStack {
            Text("location status: \(locationManager.statusString)")
            HStack {
                Text("latitude: \(userLatitude)")
                Text("longitude: \(userLongitude)")
            }
        }
    }
}

struct LocationManagerView_Previews: PreviewProvider {
    static var previews: some View {
        LocationManagerView()
    }
}
