//
//  SwiftUIView.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/6.
//

import SwiftUI
import Combine
// 订阅您的可观察对象，并在数据更改时更新需要刷新的所有视图
final class UserData: ObservableObject {
   @Published var showFavoriteOnly = false
   @Published var landmarks = ypLandmarkData
}
