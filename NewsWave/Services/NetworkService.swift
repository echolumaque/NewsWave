//
//  NetworkService.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Alamofire
import Foundation

protocol NetworkService {
    func getTopHeadlines() async throws(AFError) -> HeadlineResponse
    func searchNews(keyword: String) async throws(AFError) -> HeadlineResponse
    func downloadImage(from urlString: String) async -> UIImage?
}

actor NetworkServiceImpl: NetworkService {
    private let cache: NSCache<NSString, UIImage>
    private let decoder: JSONDecoder
    
    init(decoder: JSONDecoder) {
        cache = NSCache<NSString, UIImage>()
        self.decoder = decoder
    }
    
    func downloadImage(from urlString: String) async -> UIImage? {
        let cacheKey = NSString(string: urlString)
        if let cachedImage = cache.object(forKey: cacheKey) { return cachedImage }
        guard let url = URL(string: urlString) else { return nil }
        
        do {
            let data = try await AF.request(url).serializingData().value
            guard let image = UIImage(data: data) else { return nil }
            cache.setObject(image, forKey: cacheKey)
            
            return image
            
        } catch {
            return nil
        }
    }
    
    func getTopHeadlines() async throws(AFError) -> HeadlineResponse {
        guard let apiKey: String = try? Configuration.value(for: Configuration.apiKey.rawValue) else { return .empty }
        
//        let isoCountryCode = (Locale.autoupdatingCurrent.region?.identifier ?? "us").lowercased()
        let newsResult = await AF.request("https://newsapi.org/v2/top-headlines?country=us&apiKey=\(apiKey)")
            .serializingDecodable(HeadlineResponse.self, decoder: decoder).result
        switch newsResult {
        case .success(let articleResponse): return articleResponse
        case .failure(let failure): throw failure
        }
    }
    
    func searchNews(keyword: String) async throws(AFError) -> HeadlineResponse {
        guard let apiKey: String = try? Configuration.value(for: Configuration.apiKey.rawValue),
              let keyword = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return .empty }
        
        let newsResult = await AF.request("https://newsapi.org/v2/everything?q=\(keyword)&apiKey=\(apiKey)")
            .serializingDecodable(HeadlineResponse.self, decoder: decoder).result
        switch newsResult {
        case .success(let articleResponse): return articleResponse
        case .failure(let failure): throw failure
        }
    }
}
