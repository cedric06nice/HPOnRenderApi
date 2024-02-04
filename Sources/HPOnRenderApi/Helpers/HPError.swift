//
//  HPError.swift
//
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

public enum HPError: Error {
    case invalidURL
    case missingData
}

extension HPError: LocalizedError {
    var description: String {
        switch self {
        case .invalidURL:
            return NSLocalizedString(
                "The provided URL is not valid.",
                comment: "Invalid URL provided."
            )
        case .missingData:
            return NSLocalizedString(
                "No data are available.",
                comment: "No data available.")
        }
    }
}
