//
//  NewsListTableViewCellViewModel.swift
//  LatestNews
//
//  Created by avanees on 24/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import Foundation

protocol NewsListTableViewCellPresentable {
    var imageUrl: String? { get }
    var title: String { get }
}

struct NewsListTableViewCellViewModel: NewsListTableViewCellPresentable {
    var imageUrl: String?
    var title: String
}
