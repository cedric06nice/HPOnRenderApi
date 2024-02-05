//
//  HPHouse.swift
//  HP
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * The `HPHouse` enum represents the different houses in the Hogwarts School of Witchcraft and Wizardry.
 *
 * Each house is associated with a string value, which is used for encoding and decoding purposes.
 *
 * The enum conforms to the `Codable` protocol, allowing instances of `HPHouse` to be encoded to and decoded from external representations such as JSON.
 * It also conforms to the `Hashable` protocol, enabling instances of `HPHouse` to be used as keys in hash-based collections like dictionaries and sets.
 *
 * Example usage:
 * ```
 * let house = HPHouse.gryffindor
 * print(house.rawValue) // Output: "Gryffindor"
 * ```
 */
public enum HPHouse: String, Codable, Hashable {
    
    /// Represents the Gryffindor house.
    case gryffindor = "Gryffindor"
    
    /// Represents the Hufflepuff house.
    case hufflepuff = "Hufflepuff"
    
    /// Represents the Ravenclaw house.
    case ravenclaw = "Ravenclaw"
    
    /// Represents the Slytherin house.
    case slytherin = "Slytherin"
    
    /// Represents an unknown house.
    case empty = ""
}
