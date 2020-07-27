//
//  ConfigurableView.swift
//  LatestNews
//
//  Created by avanees on 23/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

protocol ConfigurableView {
    func configureView()
    func configureViewProperties()
    func configureSubviews()
    func configureLayout()
}

extension ConfigurableView {
    func configureView() {
        configureViewProperties()
        configureSubviews()
        configureLayout()
    }

    func configureViewProperties() {}
    func configureSubviews() {}
    func configureLayout() {}
}
