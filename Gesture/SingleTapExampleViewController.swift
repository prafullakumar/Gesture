//
//  SingleTapExampleViewController.swift
//  Gesture
//
//  Created by prafull kumar on 21/3/20.
//  Copyright © 2020 prafull kumar. All rights reserved.
//

import UIKit

final class SingleTapExampleViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Single Tap"
        let singleTap =  UITapGestureRecognizer.init(target: self, action: #selector(doSingleTap))
        singleTap.numberOfTapsRequired = 1
        self.view.addGestureRecognizer(singleTap)
    }
    
    @objc func doSingleTap(gesture: UITapGestureRecognizer) -> Void {
        logLabel.text = "Single tap"
    }

    

}
