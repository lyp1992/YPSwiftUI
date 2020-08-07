//
//  TestAppStorage.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI

struct TestAppStorage: View {
     // 属性包装程序类型 ,通过UserDefaults实现数据持久化。
    @AppStorage("username") var username: String = "jack"
    var body: some View {
        VStack {
            Text("Welcome, \(username)")
            Button("Login") {
                self.username = "yohan"
//                UserDefaults.standard.set(username, forKey: "username")
            }
        }
        
     
    }
}

struct TestAppStorage_Previews: PreviewProvider {
    static var previews: some View {
        TestAppStorage()
    }
}
