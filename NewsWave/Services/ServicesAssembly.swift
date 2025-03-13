//
//  ServicesAssembly.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Swinject

class ServicesAssembly: Assembly {
    func assemble(container: Container) {
        container.register(JSONDecoder.self) { _ in
            let jsonDecoder = JSONDecoder()
            jsonDecoder.dateDecodingStrategy = .iso8601
            jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
            
            return jsonDecoder
        }.inObjectScope(.container)
        
        container.register(NetworkService.self) { resolver in
            NetworkServiceImpl(decoder: resolver.resolve(JSONDecoder.self)!)
        }.inObjectScope(.container)
    }
}
