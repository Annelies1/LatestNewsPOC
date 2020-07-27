//
//  News.swift
//  LatestNews
//
//  Created by avanees on 23/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import Foundation

struct NewsItem: Decodable {
    let source: Source
    let author: String?
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: String
    let content: String?
}

struct Source: Decodable {
    let id: String?
    let name: String
}
