//
//  NewsApiClient.swift
//  LatestNews
//
//  Created by avanees on 23/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import Foundation
import Promises

final class NewsApiClient {
    
    private let baseUrl = "https://newsapi.org"
    
    private let headlinesEndpoint = "/v2/top-headlines"
    private let apiKey = "97790c3a1f37482490144b06453b5029"
    
    enum Error: LocalizedError {
        case invalidStatusCode
        case emptyData
        case invalidUrl
    }
    
    private func createUrl(path: String) -> URL? {
        var urlComponents = URLComponents(string: "\(self.baseUrl)\(path)")
        urlComponents?.query = "country=nl&apiKey=\(self.apiKey)"
        
        guard let url = urlComponents?.url else {
            return nil
        }
        return url
    }
    
    private func request<T>(path: String) -> Promise<T> where T: Decodable {
        return Promise<T> { fulfill, reject in
            guard let url = self.createUrl(path: path) else {
                reject(Error.invalidUrl)
                return
            }
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    reject(error)
                    return
                }
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    reject(Error.invalidStatusCode)
                    return
                }
                guard let data = data else {
                    reject(Error.emptyData)
                    return
                }
                do {
                    let model = try JSONDecoder().decode(T.self, from: data)
                    fulfill(model)
                } catch {
                    print(error.localizedDescription)
                    reject(error)
                }
            }.resume()
        }
    }
}

extension NewsApiClient: NewsApiClientInterface {
    
    func fetchTopHeadlines() -> Promise<HeadlinesResponse> {
        return request(path: headlinesEndpoint)
    }
}
