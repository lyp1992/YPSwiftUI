//
//  SwiftViewController.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/7.
//

import Foundation

@objc class SwiftViewController: UIViewController {
    @objc var name: String = ""
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        let presentButton = UIButton.init(frame: CGRect(x: 100, y: 100, width: 150, height: 50))
        presentButton.backgroundColor = UIColor.gray
        presentButton.setTitle(name, for: .normal)
        presentButton.addTarget(self, action: #selector(presentSwiftUI), for: .touchUpInside)
        view.addSubview(presentButton)
        
        let dismissButton = UIButton.init(frame: CGRect(x: 100, y: 250, width: 150, height: 50))
        dismissButton.backgroundColor = UIColor.gray
        dismissButton.setTitle(name, for: .normal)
        dismissButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        view.addSubview(dismissButton)
    }
    
    @objc func presentSwiftUI() {
       let hostVC = YPPresentSwiftHostViewConttroller.init()
        hostVC?.name = self.name
        present(hostVC!, animated: true, completion: nil)
    }
    
    @objc func dismissVC() {
        self.dismiss(animated: true, completion: nil)
    }
}
