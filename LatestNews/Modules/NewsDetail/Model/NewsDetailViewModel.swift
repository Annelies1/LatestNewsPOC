//
//  NewsDetailViewModel.swift
//  LatestNews
//
//  Created by avanees on 26/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import Foundation

protocol NewsDetailPresentable {
    var imageUrl: String? { get }
    var title: String { get }
    var author: String? { get }
    var publishingDate: String { get }
    var description: String? { get }
    var content: String? { get }
}

struct NewsDetailViewModel: NewsDetailPresentable {
    var imageUrl: String?
    var title: String
    var author: String?
    var publishingDate: String
    var description: String?
    var content: String?
}
