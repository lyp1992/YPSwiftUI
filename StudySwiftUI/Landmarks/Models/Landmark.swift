//
//  landmark.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/6.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {

    var id: Int
    var name: String
    var category: Category
    var state: String
    var park: String
    var isFavorite: Bool
    
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    
    var loacationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
 
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {

    var longitude: Double
    var latitude: Double
}
