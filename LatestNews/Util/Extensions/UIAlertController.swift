//
//  UIAlertAction.swift
//  LatestNews
//
//  Created by avanees on 26/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    
    static func createOkAlert(with title: String?, message: String?) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok".localized(), style: .default, handler: nil)
        alert.addAction(okAction)
        return alert
    }
}
