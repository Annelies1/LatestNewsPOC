//
//  UITableView+CellDequeue.swift
//  LatestNews
//
//  Created by avanees on 24/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import UIKit

extension UITableView {
    
    func dequeueReusableCell<T>(for indexPath: IndexPath) -> T where T: UITableViewCell {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Error dequeueing cell")
        }
        
        return cell
    }
    
    func dequeueReusableHeaderFooterView<T>() -> T where T: UITableViewHeaderFooterView {
        guard let headerView = dequeueReusableHeaderFooterView(withIdentifier: T.reuseIdentifier ) as? T else {
            fatalError("Error dequeueing header or footer view")
        }
        
        return headerView
    }
}

protocol Reusable: class {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: Reusable { }
extension UITableViewHeaderFooterView: Reusable { }
