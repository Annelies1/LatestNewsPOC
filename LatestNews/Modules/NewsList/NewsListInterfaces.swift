//
//  NewsListInterfaces.swift
//  LatestNews
//
//  Created by avanees on 23/07/2020.
//  Copyright (c) 2020 ave. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum NewsListNavigationOption {
    case detail(NewsItem)
}

protocol NewsListRouterInterface: RouterInterface {
    func navigate(to option: NewsListNavigationOption)
}

protocol NewsListViewInterface: ViewInterface {
    func showResults()
    func showEmptyResultsView()
    func startActivityIndicator()
    func stopActivityIndicator()
}

protocol NewsListPresenterInterface: PresenterInterface {
    func newsItemAtIndex(_ index: IndexPath) -> NewsListTableViewCellPresentable
    func countNewsItems() -> Int
    func showDetailsForNewsItemAtIndex(_ index: IndexPath)
}

protocol NewsListInteractorInterface: InteractorInterface {
    var delegate: NewsListInteractorDelegate? { get set }
    
    func fetchTopHeadlines()
}

protocol NewsListInteractorDelegate: AnyObject {
    func interactor(_ interactor: NewsListInteractorInterface,
                    didFetchTopHeadlines newsItems: [NewsItem])
    func interactor(_ interactor: NewsListInteractorInterface,
                    failedRetrievingTopHeadlines error: Error)
}
