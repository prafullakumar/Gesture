//
//  RotateExampleViewController.swift
//  Gesture
//
//  Created by prafull kumar on 21/3/20.
//  Copyright © 2020 prafull kumar. All rights reserved.
//

import UIKit

final class RotateExampleViewController: BaseViewController {
    private var rotation: CGFloat = 0.0
    private var previousRotation: CGFloat = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Rotate"
        let rotationGesture = UIRotationGestureRecognizer.init(target: self, action: #selector(rotate))
        self.demoView.addGestureRecognizer(rotationGesture)
    
        
    }
    

    @objc func rotate(gesture :UIRotationGestureRecognizer) {
        rotation = gesture.rotation
        
        self.demoView.transform = CGAffineTransform.identity.rotated(by: rotation + previousRotation)
        
        if gesture.state == .ended {
            previousRotation = rotation + previousRotation
            rotation = 0
        }
        
    }
    

}
