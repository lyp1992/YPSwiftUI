//
//  TestDisclosureGroup.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI

struct TestDisclosureGroup: View {
    @State private var revalDetail = false
    var body: some View {
        
        VStack {
            DisclosureGroup("show terms", isExpanded: $revalDetail) {
                Text("loibgbahdvb fgsjkdnbf ghjksbfg  ysuhdbjfb  gfhsjba fbkb gyuaskhbfgb ghusajfgsabn hgsvba tyuisafh nsbvabv fghuiuaf juytrafdfgh ytdfgva fghjkafhj")
                Button("hide again") {
                    revalDetail.toggle()
                }
            }.padding()
                    
            Spacer()
        }
    }
}

struct TestDisclosureGroup_Previews: PreviewProvider {
    static var previews: some View {
        TestDisclosureGroup()
    }
}
