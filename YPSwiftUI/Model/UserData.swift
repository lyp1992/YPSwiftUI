//
//  UserData.swift
//  YPSwiftUI
//
//  Created by 赖永鹏 on 2019/9/23.
//  Copyright © 2019 LYP. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
 
   @Published var  isShowOnlyFavrite = false
   @Published var  landmarks = Landmarks
}

