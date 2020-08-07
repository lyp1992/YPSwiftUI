//
//  TestText.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/7/20.
//

import SwiftUI

struct YPText: View {
    private var profileText: String = "Hello worldHello worldHello worldHello worldHello worldHello worldHello worldHello worldHello worldHello worldHello worldHello worldHello worldHello worldHello worldHello worldHello worldHello worldHello world"
    var body: some View {
        // 限制行数
        Text("your name \(profileText)").lineLimit(3).truncationMode(.middle)
    }
    
}

struct TestText: View {
    var body: some View {
        YPText()
    }
}

struct TestText_Previews: PreviewProvider {
    static var previews: some View {
        TestText()
    }
}
