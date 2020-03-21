//
//  PinchExampleViewController.swift
//  Gesture
//
//  Created by prafull kumar on 21/3/20.
//  Copyright © 2020 prafull kumar. All rights reserved.
//

import UIKit

final  class PinchExampleViewController: BaseViewController {
    private var demoViewScale: CGFloat = 1
    private var demoViewPriviousScale: CGFloat = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pinch"
        let  pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(doPinch))
        self.demoView.addGestureRecognizer(pinchGestureRecognizer)
        // Do any additional setup after loading the view.
    }
    

    @objc func doPinch(gesture :UIPinchGestureRecognizer) {
        demoViewScale = gesture.scale
        
        let transformation = CGAffineTransform.identity.scaledBy(x: demoViewScale * demoViewPriviousScale, y: demoViewScale * demoViewPriviousScale)
        
        self.demoView.transform = transformation
        
        
        if gesture.state == .ended {
            demoViewPriviousScale = demoViewScale * demoViewPriviousScale
            demoViewScale = 1
        }
    }
    

}

