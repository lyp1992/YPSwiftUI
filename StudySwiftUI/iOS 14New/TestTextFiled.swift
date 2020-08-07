//
//  TestTextFiled.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI

struct TestTextFiled: View {
    @State private var name = ""
    var body: some View {
        TextField("Enter your name", text: $name)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .onChange(of: name) { value in
                print("name changed to \(name)")
            }
    
    }
}

struct TestTextFiled_Previews: PreviewProvider {
    static var previews: some View {
        TestTextFiled()
    }
}
