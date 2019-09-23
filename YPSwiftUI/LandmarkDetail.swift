//
//  LandmarkDetail.swift
//  YPSwiftUI
//
//  Created by 赖永鹏 on 2019/9/22.
//  Copyright © 2019 LYP. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    let landmark:Landmark
    
    var landmarkIndex: Int{
        userData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    var body: some View {
        VStack{
            
            MapView(center:landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height:380)
            
            Image(landmark.imageName)
                .resizable()
                .frame(width:250,height: 250)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red, lineWidth: 5))
                .shadow(radius: 10)
                .offset(CGSize(width: 0, height: -130))
                .padding(.bottom,-130)
                
            
            VStack(alignment: .leading,spacing: 8 ){
                HStack{
                    Text(landmark.name).font(.title)
                                    
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }){
                        if self.userData.landmarks[self.landmarkIndex].isFavorite{
                            Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                        }else{
                            Image(systemName: "star")
                                                       .foregroundColor(.gray)
                        }
                       
                    }
                }
               
                HStack{
                    Text(landmark.city).font(.subheadline)
                        .padding(.leading,10)
                    
                        Spacer()
                    Text(landmark.province).font(.subheadline)
                        .padding(.trailing,10)
                    }
                           
            }
            Spacer()
            
        }
        .navigationBarTitle(Text(landmark.name),displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandmarkDetail(landmark: Landmarks[0]).environmentObject(UserData())
        }
    }
}
