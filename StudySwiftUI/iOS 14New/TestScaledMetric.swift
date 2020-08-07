//
//  TestScaledMetric.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI

struct TestScaledMetric: View {
// 可以跟随系统改变大小
    @ScaledMetric var imageSize: CGFloat = 100
    
    var body: some View {
        Image(systemName: "cloud.sun.blot.fill")
    }
}

struct TestScaledMetric_Previews: PreviewProvider {
    static var previews: some View {
        TestScaledMetric()
    }
}
