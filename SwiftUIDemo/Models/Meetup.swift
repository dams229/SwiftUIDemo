/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual meetup.
*/

import SwiftUI
import CoreLocation

struct Meetup: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var subtitle: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    func image(forSize size: Int) -> Image {
        ImageStore.shared.image(name: imageName, size: size)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
