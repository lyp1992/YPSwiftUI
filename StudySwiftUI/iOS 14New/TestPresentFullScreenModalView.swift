//
//  TestPresentFullScreenModalView.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI

struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Text ("this is modal view")
            Text ("tap to dismiss")
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }
    }
 }

struct TestPresentFullScreenModalView: View {
    @State private var isPresented = false
    var body: some View {
        Button("present View") {
            self.isPresented.toggle()
        }
        .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
        
    }
}

struct TestPresentFullScreenModalView_Previews: PreviewProvider {
    static var previews: some View {
        TestPresentFullScreenModalView()
    }
}
