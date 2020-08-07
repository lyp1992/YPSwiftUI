//
//  ContentView.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/7/13.
//  Copyright © 2020 Lai,Yongpeng. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    var body: some View {
//        Text("live long and prosper")
//            .frame(width: 300, height: 300, alignment: .topLeading)
//            .foregroundColor(.red)
//        HStack(alignment: .lastTextBaseline, spacing: 30){
//            Text("Live").font(.caption)
//            Text("long")
//            Text("and").font(.title)
//            Text("prosper").font(.largeTitle)
//        }
        // 对齐
//        VStack(alignment: .leading) {
//            Text("Hello world!").alignmentGuide(.leading) { d  in d[.leading]}
//            Text("This is a longer line of text")
//        }
//        .background(Color.red)
//        .frame(width: 400, height: 400)
//        .background(Color.blue)
        
//        VStack(alignment: .leading) {
//            ForEach(0..<10) {position in
//                Text("Number \(position) ").alignmentGuide(.leading) { _  in CGFloat(position) * -20 }
//            }
//        }
//        .background(Color.red)
//        .frame(width: 400, height: 400)
//        .background(Color.blue)
        
//    // 自定义对齐
//
//        HStack(alignment: .midAccountAndName) {
//            VStack {
//                Text("@youxiang").alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center]}
//                Image("61571983118.pic")
//                    .resizable()
//                    .frame(width: 64, height: 64)
//            }
//            VStack {
//                Text("full name:")
//                Text("Paul Hudson").alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] }
//                    .font(.largeTitle)
//            }
//        }
        
        // 绝对定位
//        Text("Hello world")
//            .background(Color.red)
//            .position(x: 100, y: 100)
//        Text("Hello world")
//            .background(Color.yellow)
//            .offset(x: 100, y: 100)
//            .background(Color.red)
        
        // GeometryReader 用法
        
//        GeometryReader { geo in
//            Text("Hello world").frame(width: geo.size.width)
//                .background(Color.red)
//        }
            
//        VStack {
//            GeometryReader {geo in
//                Text("Hello world").frame(width: geo.size.width * 0.9).background(Color.red)
//            }.background(Color.green)
//
//            Text("More text")
//                .background(Color.blue)
//        }
//        outerView()
//            .background(Color.red)
//            .coordinateSpace(name: "Custom")
        
        // 使用geometryReader的scrollview效果
//        GeometryReader {fullView in
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack {
//                    ForEach(0..<50) { index in
//                        GeometryReader {geo in
//                            Text("Row #\(index)")
//                                .font(.title)
//                                .frame(height: 150)
//                                .background(self.colors[index % 7])
//                                .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).midX - fullView.size.width / 2) / 10), axis: (x: 0, y: 1, z: 0))
//                        }
//                        .frame(width: 150)
//                    }
//                }
//                .padding(.horizontal, (fullView.size.width - 150) / 2)
//            }
//        }
//        .edgesIgnoringSafeArea(.all)
        
        // 使用两个并排视图
//        NavigationView {
//            Text("Hello world")
//                .navigationBarTitle("Primary")
//            Text("Secondary")
//        }
//        NavigationView {
//            NavigationLink(destination: Text("New Secondart")) {
//                Text("Hello world")
//            }
//            .navigationBarTitle("Primary")
//            Text("Secondary")
//        }
        
        /// alet() sheet()
        Text("Hello, world!").padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension VerticalAlignment {
    struct MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct outerView: View {
    var body: some View {
        VStack {
            Text("Top")
            InnerView()
                .background(Color.green)
            Text("Bottom")
        }
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            Text("Left")
            GeometryReader{ geo in
                Text("center")
                    .background(Color.blue)
                    .onTapGesture {
                        print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)" )
                        print("Custom center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)" )
                        print("Local center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)" )
                }
            }.background(Color.orange)
            Text("Right")
        }
    }
}
