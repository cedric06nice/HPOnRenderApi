//
//  HPAncestry.swift
//  HP
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * The `HPAncestry` enum represents the different ancestries in the Harry Potter universe.
 *
 * Each ancestry is associated with a string value, which is used for encoding and decoding purposes.
 *
 * The enum conforms to the `Codable` protocol, allowing instances of `HPAncestry` to be encoded to and decoded from external representations such as JSON.
 * It also conforms to the `Hashable` protocol, enabling instances of `HPAncestry` to be used as keys in hash-based collections like dictionaries and sets.
 *
 * Example usage:
 * ```
 * let ancestry = HPAncestry.halfBlood
 * print(ancestry.rawValue) // Output: "half-blood"
 * ```
 */
public enum HPAncestry: String, Codable, Hashable {
    
    /// A half-blood ancestry.
    case halfBlood = "half-blood"
    
    /// A half-veela ancestry.
    case halfVeela = "half-veela"
    
    /// A muggle ancestry.
    case muggle = "muggle"
    
    /// A muggleborn ancestry.
    case muggleborn = "muggleborn"
    
    /// A pure-blood ancestry.
    case pureBlood = "pure-blood"
    
    /// A quarter-veela ancestry.
    case quarterVeela = "quarter-veela"
    
    /// A squib ancestry.
    case squib = "squib"
    
    /// An unknown ancestry.
    case empty = ""
}
