//
//  SwiftUIView.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/7.
//

import SwiftUI


struct SwiftUIPresentView: View {
    
    @State var isPresented = false
    
    var dismiss: (() -> Void)?
    var name: String?
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Button("Dimiss", action: dismiss!)
                    
                    Button("presentOCVC") {
                        self.isPresented = true
                    }.sheet(isPresented: $isPresented) {
                        SwiftUIToOCViewControllerWrapper()
                    }
                }
            }
            .navigationBarTitle(name ?? "swiftUIToOC")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPresentView(name: "test")
    }
}
