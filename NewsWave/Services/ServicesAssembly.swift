//
//  ServicesAssembly.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import SwiftData
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
        
        container.register(ModelContainer.self) { _ in
            let schemas: [any PersistentModel.Type] = [Article.self]
            let localConfiguration = ModelConfiguration(
                "localConfig",
                schema: Schema(schemas),
                isStoredInMemoryOnly: false,
                cloudKitDatabase: .none
            )
            
            let modelContainer = try! ModelContainer(for: Schema(schemas), configurations: [localConfiguration])
            return modelContainer
        }.inObjectScope(.container)
        
        container.register(ArticleService.self) { resolver in
            let articleService = ArticleService(modelContainer: resolver.resolve(ModelContainer.self)!)
            return articleService
        }.inObjectScope(.container)
    }
}
