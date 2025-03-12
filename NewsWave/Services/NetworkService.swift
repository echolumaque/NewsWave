//
//  NetworkService.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Alamofire
import Foundation

protocol NetworkService {
    func getTopHeadlines() async throws(AFError) -> NewsResponse
}

class NetworkServiceImpl: NetworkService {
    private let decoder: JSONDecoder
    
    init(decoder: JSONDecoder) {
        self.decoder = decoder
    }
    
    func getTopHeadlines() async throws(AFError) -> NewsResponse {
        let newsResult = await AF.request(
            
        )
            .serializingDecodable(NewsResponse.self, decoder: decoder).result
        
        switch newsResult {
        case .success(let newsResponse): return newsResponse
        case .failure(let failure): throw failure
        }
    }
}
