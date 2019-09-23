//
//  LandmarkCell.swift
//  YPSwiftUI
//
//  Created by 赖永鹏 on 2019/9/23.
//  Copyright © 2019 LYP. All rights reserved.
//

import SwiftUI

struct LandmarkCell: View {
    let landmark: Landmark
    var body: some View {
     
           HStack{
                     Image(landmark.imageName)
                         .resizable()
                     .frame(width:50,height:50)
                         .cornerRadius(5)
                     
                     Text(landmark.name)
                     Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
                   
                 }
       
    }
}

struct LandmarkCell_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkCell(landmark: Landmarks[0])
            .previewLayout(.fixed(width: 300, height: 70))
       
    }
}
