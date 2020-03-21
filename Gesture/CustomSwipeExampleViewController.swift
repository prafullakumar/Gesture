//
//  CustomSwipeExampleViewController.swift
//  Gesture
//
//  Created by prafull kumar on 21/3/20.
//  Copyright © 2020 prafull kumar. All rights reserved.
//

import UIKit



final class SwipeGesture: UIGestureRecognizer {
    enum SwipeDirection {
        case horizontal
        case verticle
        case none
    }
    
    var swipeDirection: SwipeDirection = .none
    private var gestureStartPoint: CGPoint?
    
    
    let minimumGestureLength: Float = 200
    let maximumVariance: Float = 50
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesBegan(touches, with: event)
        guard let touch = touches.first else  { return }
        gestureStartPoint = touch.location(in: view)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesMoved(touches, with: event)
        guard let touch = touches.first, let gestureStartPoint = gestureStartPoint else  { return }
        let currentPos = touch.location(in: view)
        let deltaX = fabsf(Float(gestureStartPoint.x - currentPos.x))
        let deltaY = fabsf(Float(gestureStartPoint.y - currentPos.y))
        
        if (deltaX >= minimumGestureLength && deltaY <= maximumVariance) {
            swipeDirection = .horizontal
            self.state = .ended
        } else if (deltaY >= minimumGestureLength && deltaX <= maximumVariance) {
            swipeDirection = .verticle
            self.state = .ended
        }
        
    }
}


final class CustomSwipeExampleViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Custom Swipe"
        let swipeGesture = SwipeGesture(target: self, action: #selector(directionalSwipe))
        self.view.addGestureRecognizer(swipeGesture)
        // Do any additional setup after loading the view.
    }
    

    @objc func directionalSwipe(swipeGesture: SwipeGesture) {
        switch swipeGesture.swipeDirection {
        case .horizontal:
            logLabel.text = "swipe horizontal"
        case .verticle:
            logLabel.text = "swipe verticle"
        default:
            break
        }
    }

}
