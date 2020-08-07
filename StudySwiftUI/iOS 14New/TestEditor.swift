//
//  TestEditor.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/7/17.
//

import SwiftUI

struct TestEditor: View {
    @State private var profileText: String = "please show you time"
    var body: some View {
        TextEditor(text: $profileText).foregroundColor(Color.black)
    }
}

struct TestEditor_Previews: PreviewProvider {
    static var previews: some View {
        TestEditor()
    }
}
