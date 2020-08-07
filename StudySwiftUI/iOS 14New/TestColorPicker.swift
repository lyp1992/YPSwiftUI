//
//  TestColorPicker.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI
//SwiftUI有一个本机ColorPicker控件，允许用户选择一种颜色
struct TestColorPicker: View {
    @State private var bgColor = Color.white
    var body: some View {
        VStack {
//            ColorPicker("Set the background color", selection: $bgColor, supportsOpacity: false)
            ColorPicker("Set the backgroud color", selection: $bgColor)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(bgColor)
        }
    }
}

struct TestColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        TestColorPicker()
    }
}
