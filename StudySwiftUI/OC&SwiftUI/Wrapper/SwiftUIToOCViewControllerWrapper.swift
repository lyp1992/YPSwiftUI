//
//  SwiftUIView.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/7.
//

import SwiftUI

struct SwiftUIToOCViewControllerWrapper: UIViewControllerRepresentable {

    typealias UIViewControllerType = SwiftUIToOCViewController
    
    func makeUIViewController(context: Context) -> SwiftUIToOCViewControllerWrapper.UIViewControllerType {
        
        return SwiftUIToOCViewController()
    }
    
    func updateUIViewController(_ uiViewController: SwiftUIToOCViewControllerWrapper.UIViewControllerType, context: Context) {
        
    }
    
}
