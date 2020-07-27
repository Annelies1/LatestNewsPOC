//
//  NewsDetailPresenterMock.swift
//  LatestNews
//
//  Created by avanees on 27/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

@testable import LatestNews

final class NewsDetailPresenterMock: NewsDetailPresenterInterface {
    var invokedShowOriginalNewsItem = false
    var invokedShowOriginalNewsItemCount = 0
    func showOriginalNewsItem() {
        invokedShowOriginalNewsItem = true
        invokedShowOriginalNewsItemCount += 1
    }
    var invokedViewDidLoad = false
    var invokedViewDidLoadCount = 0
    func viewDidLoad() {
        invokedViewDidLoad = true
        invokedViewDidLoadCount += 1
    }
    var invokedViewWillAppear = false
    var invokedViewWillAppearCount = 0
    var invokedViewWillAppearParameters: (animated: Bool, Void)?
    var invokedViewWillAppearParametersList = [(animated: Bool, Void)]()
    func viewWillAppear(animated: Bool) {
        invokedViewWillAppear = true
        invokedViewWillAppearCount += 1
        invokedViewWillAppearParameters = (animated, ())
        invokedViewWillAppearParametersList.append((animated, ()))
    }
    var invokedViewDidAppear = false
    var invokedViewDidAppearCount = 0
    var invokedViewDidAppearParameters: (animated: Bool, Void)?
    var invokedViewDidAppearParametersList = [(animated: Bool, Void)]()
    func viewDidAppear(animated: Bool) {
        invokedViewDidAppear = true
        invokedViewDidAppearCount += 1
        invokedViewDidAppearParameters = (animated, ())
        invokedViewDidAppearParametersList.append((animated, ()))
    }
    var invokedViewWillDisappear = false
    var invokedViewWillDisappearCount = 0
    var invokedViewWillDisappearParameters: (animated: Bool, Void)?
    var invokedViewWillDisappearParametersList = [(animated: Bool, Void)]()
    func viewWillDisappear(animated: Bool) {
        invokedViewWillDisappear = true
        invokedViewWillDisappearCount += 1
        invokedViewWillDisappearParameters = (animated, ())
        invokedViewWillDisappearParametersList.append((animated, ()))
    }
    var invokedViewDidDisappear = false
    var invokedViewDidDisappearCount = 0
    var invokedViewDidDisappearParameters: (animated: Bool, Void)?
    var invokedViewDidDisappearParametersList = [(animated: Bool, Void)]()
    func viewDidDisappear(animated: Bool) {
        invokedViewDidDisappear = true
        invokedViewDidDisappearCount += 1
        invokedViewDidDisappearParameters = (animated, ())
        invokedViewDidDisappearParametersList.append((animated, ()))
    }
}
