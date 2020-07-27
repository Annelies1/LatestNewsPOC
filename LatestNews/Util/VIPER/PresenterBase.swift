//
//  Presenter.swift
//  LatestNews
//
//  Created by avanees on 23/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import Foundation

protocol PresenterInterface: class {
    func viewDidLoad()
    func viewWillAppear(animated: Bool)
    func viewDidAppear(animated: Bool)
    func viewWillDisappear(animated: Bool)
    func viewDidDisappear(animated: Bool)
}

extension PresenterInterface {
    
    func viewDidLoad() {
        assertionFailure()
    }
    
    func viewWillAppear(animated: Bool) {
        assertionFailure()
    }
    
    func viewDidAppear(animated: Bool) {
        assertionFailure()
    }
    
    func viewWillDisappear(animated: Bool) {
        assertionFailure()
    }
    
    func viewDidDisappear(animated: Bool) {
        assertionFailure()
    }
}
