//
//  TestAppStore.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI
import StoreKit
struct TestAppStore: View {
    @State private var showRecommended = false
    var body: some View {
        Button("show recommended app") {
            showRecommended.toggle()
        }
        .appStoreOverlay(isPresented: $showRecommended) {
            SKOverlay.AppConfiguration( appIdentifier: "1440611372" , position:.bottom )
        }
    }
}

struct TestAppStore_Previews: PreviewProvider {
    static var previews: some View {
        TestAppStore()
    }
}
