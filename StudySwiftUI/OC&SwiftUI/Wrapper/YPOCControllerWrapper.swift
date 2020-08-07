//
//  YPControllerWrapper.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/7.
//
import Foundation
import SwiftUI

struct YPOCControllerWrapper: UIViewControllerRepresentable {
    var landmark: Landmark?
    typealias UIViewControllerType = OCViewController
    
    func makeUIViewController(context: Context) -> YPOCControllerWrapper.UIViewControllerType {
        return OCViewController()
    }
    func updateUIViewController(_ uiViewController: YPOCControllerWrapper.UIViewControllerType, context: Context) {
        uiViewController.nametitle = landmark?.name ?? "nil";
    }

}
