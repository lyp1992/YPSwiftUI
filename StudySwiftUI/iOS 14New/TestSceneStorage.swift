//
//  TestSceneStorage.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI

struct TestSceneStorage: View {
    // ipad 分屏操作，杀死进程再进来依然能记住之前的操作
    @SceneStorage("rtyuio") var text = ""
    @SceneStorage("rtyuio") var text2 = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $text)
                TextEditor(text: $text2).foregroundColor(Color.red)
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct TestSceneStorage_Previews: PreviewProvider {
    static var previews: some View {
        TestSceneStorage()
    }
}
