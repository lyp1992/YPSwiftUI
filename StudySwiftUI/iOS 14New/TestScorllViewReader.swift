//
//  TestScorllViewReader.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI

struct TestScorllViewReader: View {
    let colors: [Color] = [.red, .green, .blue]
    
    var body: some View {
        
        ScrollView {
            ScrollViewReader { value in
                Button("jump to #8") {
                    value.scrollTo(8, anchor:.center)
                }
                ForEach(0..<10) { i in
                    Text("Example \(i)")
                        .frame(width: 300, height: 300)
                        .background(colors[i % colors.count])
                        .id(i)
                }
            }
        }
        
    }
}

struct TestScorllViewReader_Previews: PreviewProvider {
    static var previews: some View {
        TestScorllViewReader()
    }
}
