//
//  TestLink.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI

struct TestLink: View {
    var body: some View {
        Link("learn baidu", destination: URL(string: "https://www.baidu.com")!)
            .font(.largeTitle)
            .foregroundColor(Color.red)
    
    }
    
}

struct TestLink_Previews: PreviewProvider {
    static var previews: some View {
        TestLink()
    }
}
