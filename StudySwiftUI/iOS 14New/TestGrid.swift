//
//  TestGrid.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/7/17.
//

import SwiftUI

struct VGrid: View {
    
    let data = (1...1000).map{ "item \($0)"}
    let coloums = [
//        GridItem(.adaptive(minimum: 80)) // 自适应行
        /* 控制两行
        GridItem(.flexible()),
        GridItem(.flexible())
        */
 
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
    
    var body: some View {
        ScrollView {
            
            LazyVGrid(columns: coloums, spacing: 20) {
                ForEach(data, id:\.self) { item in
                    Text(item)
                }.background(Color.green)
            }
            .padding(.horizontal)
        }
    }
}

struct HGrid: View {
    let items = 1...4
    let rows = [
        GridItem(.fixed(200))
    ]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, alignment: .center) {
                ForEach(items, id: \.self) { item in
                    Image("Heading\(item)")
                }
            }
        }
    }
}
struct TestGrid: View {
    var body: some View {
//        VGrid()
        HGrid()
    }
}

struct TestGrid_Previews: PreviewProvider {
    static var previews: some View {
        TestGrid()
    }
}
