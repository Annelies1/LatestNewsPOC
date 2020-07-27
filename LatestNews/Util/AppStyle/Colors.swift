//
//  Colors.swift
//  LatestNews
//
//  Created by avanees on 23/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import UIKit

enum Colors {
    static var teal: UIColor {
        if #available(iOS 11.0, *) {
            return UIColor(named: "Teal", in: Bundle(for: AppDelegate.self), compatibleWith: nil)!
        } else {
            return UIColor(red: 0.00, green: 0.64, blue: 0.65, alpha: 1.00)
        }
    }
    static var white: UIColor {
        return UIColor.white
    }
    static var mediumGrey: UIColor {
        if #available(iOS 11.0, *) {
            return UIColor(named: "MediumGrey", in: Bundle(for: AppDelegate.self), compatibleWith: nil)!
        } else {
            return UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1.00)
        }
    }
    static var darkGrey: UIColor {
        if #available(iOS 11.0, *) {
            return UIColor(named: "DarkGrey", in: Bundle(for: AppDelegate.self), compatibleWith: nil)!
        } else {
            return UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 1.00)
        }
    }
    
    static var backgroundCanvasColor: UIColor = .white
    static var buttonBackgroundColor: UIColor { return Colors.teal }
}
