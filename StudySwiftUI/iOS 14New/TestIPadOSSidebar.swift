//
//  TestIPadOSSidebar.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI

struct SideBar: View {
    var body: some View {
         List(1..<100) { i in
             Text("Row \(i)")
         }
         .listStyle(SidebarListStyle())
     }
}

struct TestIPadOSSidebar: View {
    var body: some View {
        SideBar()
       TestToggle()
        TestEditor()
    }
}

struct TestIPadOSSidebar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TestIPadOSSidebar()
            TestIPadOSSidebar()
        }
    }
}
