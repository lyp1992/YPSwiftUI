//
//  TestToggle.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/7/17.
//

import SwiftUI

struct TestToggle: View {
    @State private var showGreeting = false
    var body: some View {
     
        VStack {
            Toggle(isOn: $showGreeting) {
                Text("show weclome message")
            }.padding(EdgeInsets(.init(top: 0, leading: 50, bottom: 0, trailing: 50)))
            
            if showGreeting {
                Text("hello world")
            }
        }
    }
}

struct TestToggle_Previews: PreviewProvider {
    static var previews: some View {
        TestToggle()
    }
}
