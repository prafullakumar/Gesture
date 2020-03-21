//
//  MultiTapExampleViewController.swift
//  Gesture
//
//  Created by prafull kumar on 21/3/20.
//  Copyright © 2020 prafull kumar. All rights reserved.
//

import UIKit

final class MultiTapExampleViewController: BaseViewController {

      override func viewDidLoad() {
          super.viewDidLoad()
          self.title = "Multiple Tap"
          let singleTap =  UITapGestureRecognizer.init(target: self, action: #selector(doSingleTap))
          singleTap.numberOfTapsRequired = 1
          self.view.addGestureRecognizer(singleTap)
        
        
        let multiTap =  UITapGestureRecognizer.init(target: self, action: #selector(doMultiTap))
        multiTap.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(multiTap)
        
        //Bonus: do not fire singletap if user make double tap
        singleTap.require(toFail: multiTap)
      }
      
      @objc func doSingleTap(gesture: UITapGestureRecognizer) -> Void {
        logLabel.text = "Single tap"
      }
    
    @objc func doMultiTap(gesture: UITapGestureRecognizer) -> Void {
        logLabel.text = "Multi tap"
    }

}
