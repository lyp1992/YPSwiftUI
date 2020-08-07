//
//  LandmarkListView.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/6.
//

import SwiftUI

struct LandmarkListView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                
                Toggle(isOn: $userData.showFavoriteOnly) {
                    
                }
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoriteOnly || landmark.isFavorite {
                        NavigationLink(
                            destination: YPOCControllerWrapper(landmark: landmark )) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        // previewDevice 提供任意设备的大小
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkListView()
                .environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
//        LandmarkListView()
//            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
    }
}
