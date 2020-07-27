//
//  NewsListRouter.swift
//  LatestNews
//
//  Created by avanees on 23/07/2020.
//  Copyright (c) 2020 ave. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class NewsListRouter: BaseRouter {

    // MARK: - Module setup -

    init() {
        let moduleViewController = NewsListViewController()
        super.init(viewController: moduleViewController)
        
        let interactor = NewsListInteractor()
        let presenter = NewsListPresenter(view: moduleViewController, interactor: interactor, router: self)
        moduleViewController.presenter = presenter
    }
}

// MARK: - NewsListRouterInterface -

extension NewsListRouter: NewsListRouterInterface {
    func navigate(to option: NewsListNavigationOption) {
        switch option {
        case .detail(let newsItem): routeToDetailWithNewsItem(newsItem: newsItem)
        }
    }
    
    func routeToDetailWithNewsItem(newsItem: NewsItem) {
        navigationController?.pushRouter(NewsDetailRouter(newsItem: newsItem))
    }
}