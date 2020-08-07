//
//  TestMap.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI
import MapKit

struct TestMap: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
       Map(coordinateRegion: $region)
    }
}

struct TestMap_Previews: PreviewProvider {
    static var previews: some View {
        TestMap()
    }
}
