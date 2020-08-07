//
//  YPPresentSwiftHostViewConttroller.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/7.
//

import SwiftUI

final class YPPresentSwiftHostViewConttroller: UIHostingController<SwiftUIPresentView> {
    
    @objc required init?(coder: NSCoder = NSCoder.empty()) {
        super.init(coder: coder, rootView: SwiftUIPresentView())
        rootView.dismiss = dismiss
        rootView.name = name ?? "nil"
    }
    var name: String?
    func dismiss() {
        dismiss(animated: true, completion: nil)
    }
}

extension NSCoder {
  class func empty() -> NSCoder {
    let data = NSMutableData()
    let archiver = NSKeyedArchiver(forWritingWith: data)
    archiver.finishEncoding()
    return NSKeyedUnarchiver(forReadingWith: data as Data)
  }
}
