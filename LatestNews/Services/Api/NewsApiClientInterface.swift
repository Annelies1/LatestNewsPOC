//
//  NewsApiClientInterface.swift
//  LatestNews
//
//  Created by avanees on 24/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import Foundation
import Promises

protocol NewsApiClientInterface {
    
    func fetchTopHeadlines() -> Promise<HeadlinesResponse>
}
