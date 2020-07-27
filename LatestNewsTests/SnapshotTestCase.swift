//
//  SnapshotTestCase.swift
//  LatestNewsTests
//
//  Created by avanees on 27/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import XCTest
import UIKit
import SnapshotTesting

class SnapshotTestCase: XCTestCase {
    
    var width: CGFloat = 320
    var height: CGFloat?
    
    override func setUp() {
        super.setUp()
        record = false
    }
    
    final func assertViewController(for viewController: UIViewController,
                                    named name: String? = nil,
                                    record recording: Bool = false,
                                    timeout: TimeInterval = 5,
                                    file: StaticString = #file,
                                    testName: String = #function,
                                    line: UInt = #line) {
        assertSnapshot(matching: viewController, as: .image(on: .iPhoneSe), named: name, record: recording, timeout: timeout, file: file, testName: testName, line: line)
    }
    
    final func assertView(for view: UIView,
                          named name: String? = nil,
                          record recording: Bool = false,
                          timeout: TimeInterval = 5,
                          file: StaticString = #file,
                          testName: String = #function,
                          line: UInt = #line) {
        let sut = view
        
        sut.translatesAutoresizingMaskIntoConstraints = false
        sut.widthAnchor.constraint(equalToConstant: width).isActive = true
        
        if let height = self.height {
            sut.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
        assertSnapshot(matching: sut, as: .image, named: name, record: recording, timeout: timeout, file: file, testName: testName, line: line)
    }
}

