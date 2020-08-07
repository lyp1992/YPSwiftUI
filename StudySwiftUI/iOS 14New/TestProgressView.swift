//
//  TestProgressView.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI

struct TestProgressView: View {
    @State private var downloadAmount = 0.0
    let timer = Timer.publish(every: 0.1,  on: .main, in: .common).autoconnect()
    var body: some View {
        
//        ProgressView()
        
        VStack {
            ProgressView("Downloading", value: downloadAmount, total: 100)
        }.onReceive(timer) { _ in
            if downloadAmount < 100 {
                downloadAmount += 2
            }
        }
    }
}

struct TestProgressView_Previews: PreviewProvider {
    static var previews: some View {
        TestProgressView()
    }
}
