//
//  MasterTableViewController.swift
//  Gesture
//
//  Created by prafull kumar on 21/3/20.
//  Copyright © 2020 prafull kumar. All rights reserved.
//

import UIKit

final class MasterTableViewController: UITableViewController {

    let types = ["Single Swipe", "Multiple Swipes", "Single Tap", "Multiple Tap(s)", "Check Mark", "Pinch Gestures", "Rotate Gestures", "Making Custom Swipe", "Combining Gestures"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return types.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = types[indexPath.row]
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(SingleSwipeExampleViewController(), animated: true)
        case 1:
            self.navigationController?.pushViewController(MultipleSwipeExampleViewController(), animated: true)
        case 2:
            self.navigationController?.pushViewController(SingleTapExampleViewController(), animated: true)
        case 3:
            self.navigationController?.pushViewController(MultiTapExampleViewController(), animated: true)
        case 4:
            self.navigationController?.pushViewController(CheckMarkExampleViewController(), animated: true)
        case 5:
            self.navigationController?.pushViewController(PinchExampleViewController(), animated: true)
        case 6:
            self.navigationController?.pushViewController(RotateExampleViewController(), animated: true)
        case 7:
            self.navigationController?.pushViewController(CustomSwipeExampleViewController(), animated: true)
        case 8:
            self.navigationController?.pushViewController(CombiningGesturesExampleViewController(), animated: true)
        default:
            break;
        }
    }

}
