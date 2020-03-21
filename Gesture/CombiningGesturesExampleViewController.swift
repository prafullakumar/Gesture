//
//  CombiningGesturesExampleViewController.swift
//  Gesture
//
//  Created by prafull kumar on 21/3/20.
//  Copyright © 2020 prafull kumar. All rights reserved.
//

import UIKit

final class CombiningGesturesExampleViewController: BaseViewController {
    private var rotation: CGFloat = 0.0
    private var previousRotation: CGFloat = 0.0
    private var demoViewScale: CGFloat = 1
    private var demoViewPriviousScale: CGFloat = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Combining Gestures"
        let rotationGesture = UIRotationGestureRecognizer.init(target: self, action: #selector(rotate))
        self.demoView.addGestureRecognizer(rotationGesture)
        rotationGesture.delegate = self
        let  pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(doPinch))
        self.demoView.addGestureRecognizer(pinchGestureRecognizer)
        pinchGestureRecognizer.delegate = self
    }


    @objc func rotate(gesture :UIRotationGestureRecognizer) {
        rotation = gesture.rotation
        transformView()
        if gesture.state == .ended {
            previousRotation = rotation + previousRotation
            rotation = 0
        }
        
    }
    
    

    @objc func doPinch(gesture :UIPinchGestureRecognizer) {
        demoViewScale = gesture.scale
        transformView()
        if gesture.state == .ended {
            demoViewPriviousScale = demoViewScale * demoViewPriviousScale
            demoViewScale = 1
        }
    }
    
    func transformView() {
        let transformation = CGAffineTransform.identity.scaledBy(x: demoViewScale * demoViewPriviousScale, y: demoViewScale * demoViewPriviousScale)
        self.demoView.transform = transformation.rotated(by: rotation + previousRotation)
    }
}

extension CombiningGesturesExampleViewController: UIGestureRecognizerDelegate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true //YES otherwise, the gesture recognizer that starts first would always block the other
    }
}
