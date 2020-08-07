//
//  TestAddTimeInter.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI

struct TestAddTimeInterval: View {
    var body: some View {
        Text(Date().addingTimeInterval(600), style: .timer)
    }
}

struct TestAddTimeInter_Previews: PreviewProvider {
    static var previews: some View {
        TestAddTimeInterval()
    }
}
