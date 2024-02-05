//
//  newJSON.swift
//  
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * Creates a new instance of `JSONDecoder` with a specific date decoding strategy.
 *
 * - Returns: A new instance of `JSONDecoder`.
 */
public func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    // Set the date decoding strategy to .iso8601 if available
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

/**
 * Creates a new instance of `JSONEncoder` with a specific date encoding strategy.
 *
 * - Returns: A new instance of `JSONEncoder`.
 */
public func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    // Set the date encoding strategy to .iso8601 if available
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}
