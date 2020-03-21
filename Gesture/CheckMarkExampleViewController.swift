//
//  CheckMarkExampleViewController.swift
//  Gesture
//
//  Created by prafull kumar on 21/3/20.
//  Copyright © 2020 prafull kumar. All rights reserved.
//

import UIKit

final class CheckMarkGesture: UIGestureRecognizer {
    private var oldPreviousPoint: CGPoint?
    private var oldCurrentPoint: CGPoint?
    private var lineLength: CGFloat?
    
    let minimumCheckMarkAngle: CGFloat = 50
    let maximumCheckMarkAngle: CGFloat = 135
    let minimumCheckMarkLength: CGFloat = 10
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesBegan(touches, with: event)
        guard let touch = touches.first else  { return }
        let position = touch.location(in: view)
        oldPreviousPoint = position
        oldCurrentPoint = position
        lineLength = 0.0
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesMoved(touches, with: event)
          guard let touch = touches.first, let oldPrevious = oldPreviousPoint, let oldCurrent = oldCurrentPoint, let lineLength = lineLength else  { return }
          let current = touch.location(in: view)
          let previous = touch.previousLocation(in: view)
          let angle = Math.angleBetweenLines(line1Start: oldPrevious,
                                        line1End: oldCurrent,
                                        line2Start: current,
                                        line2End: previous)
        print(angle)
        if (angle >= minimumCheckMarkAngle) && (angle <= maximumCheckMarkAngle) && (lineLength > minimumCheckMarkLength) {
            self.state = .ended
        }
        
        oldPreviousPoint = previous
        oldCurrentPoint = current
        self.lineLength = lineLength + Math.distance(previous, current)
        
    }
}


final class CheckMarkExampleViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "✅ mark"
        let checkMarkGesture = CheckMarkGesture(target: self, action: #selector(check))
        self.view.addGestureRecognizer(checkMarkGesture)
    }
    
    @objc func check(gesture: UIGestureRecognizer) -> Void {
        logLabel.text = "checked"
    }


}
