//
//  Landmark.swift
//  LandmarkEx
//
//  Created by j2mni on 2022/11/10.
//

import CoreLocation
import SwiftUI

struct Landmark: Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool

    private var imageName: String
    var image: Image{
        Image(imageName)
    }

    var coordinates: Coordinate
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }

    struct Coordinate: Codable {
        var latitude: Double
        var longitude: Double
    }
}
