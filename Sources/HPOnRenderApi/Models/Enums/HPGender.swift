//
//  HPGender.swift
//  HP
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * The `HPGender` enum represents the gender of a character.
 *
 * Each gender is associated with a string value, which is used for encoding and decoding purposes.
 *
 * The enum conforms to the `Codable` protocol, allowing instances of `HPGender` to be encoded to and decoded from external representations such as JSON.
 * It also conforms to the `Hashable` protocol, enabling instances of `HPGender` to be used as keys in hash-based collections like dictionaries and sets.
 *
 * Example usage:
 * ```
 * let gender = HPGender.female
 * print(gender.rawValue) // Output: "female"
 * ```
 */
public enum HPGender: String, Codable, Hashable {
    
    /// Represents the female gender.
    case female = "female"
    
    /// Represents the male gender.
    case male = "male"
}
