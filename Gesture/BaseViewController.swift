//
//  BaseViewController.swift
//  Gesture
//
//  Created by prafull kumar on 21/3/20.
//  Copyright © 2020 prafull kumar. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    lazy var logLabel: UILabel = {
         let label = UILabel()
         self.view.addSubview(label)
         label.translatesAutoresizingMaskIntoConstraints = false
         label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
         label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
         label.numberOfLines = 0
         label.textAlignment = .center
         label.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1, constant: -20).isActive = true
         return label
    }()
    
    
    lazy var demoView: UIView = {
         let demoView = UIView()
         self.view.addSubview(demoView)
         demoView.translatesAutoresizingMaskIntoConstraints = false
         demoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
         demoView.backgroundColor = UIColor.green
         demoView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        demoView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        demoView.heightAnchor.constraint(equalToConstant: 100).isActive = true
         return demoView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemBackground
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
