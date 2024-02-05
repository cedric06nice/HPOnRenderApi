//
//  HPError.swift
//
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * The `HPError` enum represents an error that can occur in the HP application.
 */
public enum HPError: Error {
    
    /// An error indicating that the provided URL is not valid.
    case invalidURL
    
    /// An error indicating that no data is available.
    case missingData
}

extension HPError: LocalizedError {
    
    /// A localized description of the error.
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
