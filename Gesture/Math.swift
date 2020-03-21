//
//  Math.swift
//  Gesture
//
//  Created by prafull kumar on 21/3/20.
//  Copyright © 2020 prafull kumar. All rights reserved.
//

import UIKit

final class Math {

   static func angleBetweenLines(line1Start: CGPoint, line1End: CGPoint, line2Start: CGPoint, line2End: CGPoint) -> CGFloat {
          let a = line1End.x - line1Start.x
          let b = line1End.y - line1Start.y
          let c = line2End.x - line2Start.x
          let d = line2End.y - line2Start.y
          let rad = acos(((a*c) + (b*d)) / ((sqrt(a*a + b*b)) * (sqrt(c*c + d*d))))
          return rad * 180 / .pi
      }
      
    static func distance(_ a: CGPoint, _ b: CGPoint) -> CGFloat {
          let xDist = a.x - b.x
          let yDist = a.y - b.y
          return CGFloat(sqrt(xDist * xDist + yDist * yDist))
      }

}
