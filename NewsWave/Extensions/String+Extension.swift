//
//  String+Extension.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/25/25.
//

import CryptoKit
import Foundation

extension String {
    var sha256: String {
        let inputData = Data(utf8)
        let hashed = SHA256.hash(data: inputData)
        return hashed.map { String(format: "%02x", $0) }.joined()
    }
}
