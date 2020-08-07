//
//  StudySwiftUIApp.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/7/17.
//

import SwiftUI

@main
struct StudySwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            LandmarkListView()
                .environmentObject(UserData())
            
//            TestAddTimeInterval()
            
//            TestSceneStorage()

            
//            TestIPadOSSidebar()
            
//            ContentView()
//            TestToggle()
            
//            TabView {
//                TestEditor()
//                TestToggle()
//                TestMap()
//                TestGrid()
//            }.tabViewStyle(PageTabViewStyle()).background(Color.red)
            
//            TestSceneStorage()

        }
//        DocumentGroup(newDocument: TextFile()) { file in
//            TestFileDocument(document: file.$document)
//        }
    }
}

