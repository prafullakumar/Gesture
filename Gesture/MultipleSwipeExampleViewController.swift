//
//  MultipleSwipeExampleViewController.swift
//  Gesture
//
//  Created by prafull kumar on 21/3/20.
//  Copyright © 2020 prafull kumar. All rights reserved.
//

import UIKit

final class MultipleSwipeExampleViewController: BaseViewController {
    let numberOfTouchesRequired = 2
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Multiple Swipes"
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeLeft.direction = .left
        
        //Number of fingers required
        swipeLeft.numberOfTouchesRequired = numberOfTouchesRequired
        
        self.view.addGestureRecognizer(swipeLeft)

        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeRight.direction = .right
        swipeRight.numberOfTouchesRequired = numberOfTouchesRequired
        self.view.addGestureRecognizer(swipeRight)

        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeUp.direction = .up
        swipeUp.numberOfTouchesRequired = numberOfTouchesRequired
        self.view.addGestureRecognizer(swipeUp)

        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeDown.direction = .down
        swipeDown.numberOfTouchesRequired = numberOfTouchesRequired
        self.view.addGestureRecognizer(swipeDown)
        
    }
    

    @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
       if gesture.direction == .right {
            self.logLabel.text = "Swipe Right \(gesture.numberOfTouchesRequired)"
       }
       else if gesture.direction == .left {
        self.logLabel.text = "Swipe Left \(gesture.numberOfTouchesRequired)"
       }
       else if gesture.direction == .up {
        self.logLabel.text = "Swipe up \(gesture.numberOfTouchesRequired)"
       }
       else if gesture.direction == .down {
        self.logLabel.text = "Swipe Down \(gesture.numberOfTouchesRequired)"
            
       }
    }

}

