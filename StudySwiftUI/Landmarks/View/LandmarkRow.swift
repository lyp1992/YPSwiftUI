//
//  LandmarkRow.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/6.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkRow(landmark: ypLandmarkData[0])
        // previewLayout 可以控制行的大小
        LandmarkRow(landmark: ypLandmarkData[1])
//            .previewLayout(.fixed(width: 300, height: 70))
        
//        Group {
//            LandmarkRow(landmark: ypLandmarkData[1])
//                
//            LandmarkRow(landmark: ypLandmarkData[1])
//                
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
    }
}
