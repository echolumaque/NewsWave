//
//  Configuration.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Foundation

enum Configuration: String {
    case apiKey = "API_KEY"
    enum Error: Swift.Error { case missingKey, invalidValue }
    
    static func value<T>(for key: String) throws -> T where T: LosslessStringConvertible {
        guard let object = Bundle.main.object(forInfoDictionaryKey:key) else {
            throw Error.missingKey
        }

        switch object {
        case let value as T:
            return value
        case let string as String:
            guard let value = T(string) else { fallthrough }
            return value
        default:
            throw Error.invalidValue
        }
    }
}
