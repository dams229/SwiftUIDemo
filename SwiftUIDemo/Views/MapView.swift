//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by Damien Dorizy on 09/07/2019.
//  Copyright © 2019 Cocoheads. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView(coordinate: meetupData[0].locationCoordinate)
    }
}
#endif
