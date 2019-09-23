//
//  MapView.swift
//  YPSwiftUI
//
//  Created by 赖永鹏 on 2019/9/22.
//  Copyright © 2019 LYP. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let center:CLLocationCoordinate2D
    func makeUIView(context: Context) -> MKMapView { MKMapView() }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {

        let span = MKCoordinateSpan(latitudeDelta:0.02, longitudeDelta: 0.02)
        
        uiView.setRegion(MKCoordinateRegion(
                  center:center ,
                  span: span), animated: true)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(center: CLLocationCoordinate2D(latitude: 39.9087243, longitude: 116.3952859))
    }
}
