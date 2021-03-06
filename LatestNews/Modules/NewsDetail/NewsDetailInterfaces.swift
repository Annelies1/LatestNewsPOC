//
//  NewsDetailInterfaces.swift
//  LatestNews
//
//  Created by avanees on 26/07/2020.
//  Copyright (c) 2020 ave. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum NewsDetailNavigationOption {
    case showOriginalNewsItem(NewsItem)
}

protocol NewsDetailRouterInterface: RouterInterface {
    func navigate(to option: NewsDetailNavigationOption)
}

protocol NewsDetailViewInterface: ViewInterface {
    func update(with viewModel: NewsDetailPresentable)
}

protocol NewsDetailPresenterInterface: PresenterInterface {
    func showOriginalNewsItem()
}
