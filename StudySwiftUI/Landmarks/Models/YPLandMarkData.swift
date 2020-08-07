//
//  Data.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/6.
//

import SwiftUI
import UIKit
import CoreLocation

let ypLandmarkData: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

final class ImageStore {
    typealias imageDictionary = [String: CGImage]
    fileprivate var images: imageDictionary = [:]
    fileprivate static var scale = 2
    
    static var shared = ImageStore()
    func image(name: String) -> Image {
        let index = cashImage(name: name)
        
        return Image(images.values[index], scale: CGFloat(ImageStore.scale), label:Text(name))
    }
    
    fileprivate func cashImage(name: String) -> imageDictionary.Index {
        if let index = images.index(forKey: name) {
            return index
        }
        
        images[name] = ImageStore.loadImage(name: name)
        return images.index(forKey: name)!
    }
    
    static func loadImage(name: String) -> CGImage {
        guard
            let url = Bundle.main.url(forResource: name, withExtension: "jpg"),
            let imageSource = CGImageSourceCreateWithURL(url as NSURL, nil),
            let image = CGImageSourceCreateImageAtIndex(imageSource, 0, nil)
        else {
            fatalError("Couldn't load image \(name).jpg from main bundle.")
        }
        return image
    }
    
}
