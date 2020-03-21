//
//  SingleSwipeExampleViewController.swift
//  Gesture
//
//  Created by prafull kumar on 21/3/20.
//  Copyright © 2020 prafull kumar. All rights reserved.
//

import UIKit

final class SingleSwipeExampleViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Single Swipe"
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)

        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)

        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeUp.direction = .up
        self.view.addGestureRecognizer(swipeUp)

        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeDown.direction = .down
        self.view.addGestureRecognizer(swipeDown)
        
    }
    

    @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
       if gesture.direction == .right {
            self.logLabel.text = "Swipe Right"
       }
       else if gesture.direction == .left {
        self.logLabel.text = "Swipe Left"
       }
       else if gesture.direction == .up {
        self.logLabel.text = "Swipe up"
       }
       else if gesture.direction == .down {
        self.logLabel.text = "Swipe Down"
            
       }
    }

}
