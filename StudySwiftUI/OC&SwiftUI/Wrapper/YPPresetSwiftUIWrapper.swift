//
//  YPPresetSwiftUIWrapper.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/7.
//

import SwiftUI

@objc
class YPPresetSwiftUIWrapper: NSObject {

    var hostingController: UIViewController?
    @objc func makePresetSwiftUI(name: String) -> UIViewController {
        let sv = SwiftUIPresentView(name: name)
        hostingController = UIHostingController(rootView: sv)
        return hostingController!
    }
}
