//
//  HPHairColour.swift
//  HP
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * The `HPHairColour` enum represents the different hair colours.
 *
 * Each hair colour is associated with a string value, which is used for encoding and decoding purposes.
 *
 * The enum conforms to the `Codable` protocol, allowing instances of `HPHairColour` to be encoded to and decoded from external representations such as JSON.
 * It also conforms to the `Hashable` protocol, enabling instances of `HPHairColour` to be used as keys in hash-based collections like dictionaries and sets.
 *
 * Example usage:
 * ```
 * let hairColour = HPHairColour.brown
 * print(hairColour.rawValue) // Output: "brown"
 * ```
 */
public enum HPHairColour: String, Codable, Hashable {
    
    /// Represents bald hair.
    case bald = "bald"
    
    /// Represents a black hair colour.
    case black = "black"
    
    /// Represents a blond hair colour.
    case blond = "blond"
    
    /// Represents a blonde hair colour.
    case blonde = "blonde"
    
    /// Represents a brown hair colour.
    case brown = "brown"
    
    /// Represents a dark hair colour.
    case dark = "dark"
    
    /// Represents a dull hair colour.
    case dull = "dull"
    
    /// Represents a ginger hair colour.
    case ginger = "ginger"
    
    /// Represents a grey hair colour.
    case grey = "grey"
    
    /// Represents a red hair colour.
    case red = "red"
    
    /// Represents a sandy hair colour.
    case sandy = "sandy"
    
    /// Represents a silver hair colour.
    case silver = "silver"
    
    /// Represents a tawny hair colour.
    case tawny = "tawny"
    
    /// Represents a white hair colour.
    case white = "white"
    
    /// Represents no specified hair colour.
    case empty = ""
}
