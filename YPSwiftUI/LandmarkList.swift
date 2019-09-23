//
//  LandmarkList.swift
//  YPSwiftUI
//
//  Created by 赖永鹏 on 2019/9/22.
//  Copyright © 2019 LYP. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $userData.isShowOnlyFavrite){
                    Text("只展示收藏")
                }
                
                ForEach(userData.landmarks){ landmark in
//                        利用逻辑或运算符的短路效应，前面为真，就不会走后面的
                    if !self.userData.isShowOnlyFavrite || landmark.isFavorite{
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                            LandmarkCell(landmark: landmark)
                        }
                         
                    }
                        
                }
            }
            .navigationBarTitle(Text("世界名筑"),displayMode: .inline)
        }
   
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(UserData())
    }
}
