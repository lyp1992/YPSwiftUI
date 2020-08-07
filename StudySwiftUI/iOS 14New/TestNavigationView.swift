//
//  TestNavigationView.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI

struct TestNavigationView: View {
    var body: some View {
        NavigationView {
            Text("hello world").padding()
                .navigationTitle("SwiftUI")
                .toolbar {
                    //                        ToolbarItem(placement: .bottomBar) {
                    //                            Button ("Press me") {
                    //                                print("pressed")
                    //                            }
                    
                    // 如果要放十个按钮
                    ToolbarItem(placement: .bottomBar) {
                        HStack(alignment:.center, spacing: 45) {
                            Button("First") {
                                print("Pressed")
                            }
                            Button("Second") {
                                print("Pressed")
                            }
                            
                            Image("turtlerock")
                                .frame(width: 40, height: 40, alignment: .center)
                                
                            
                            Button("Three") {
                                print("Three")
                            }
                            Button("Four") {
                                print("Four")
                            }
                        }
                    }
                }
        }
    }
}

struct TestNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TestNavigationView()
    }
}
