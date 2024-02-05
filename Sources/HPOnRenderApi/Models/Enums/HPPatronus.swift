//
//  HPPatronus.swift
//  HP
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * The `HPPatronus` enum represents the different patronus.
 *
 * Each patronous is associated with a string value, which is used for encoding and decoding purposes.
 *
 * The enum conforms to the `Codable` protocol, allowing instances of `HPPatronus` to be encoded to and decoded from external representations such as JSON.
 * It also conforms to the `Hashable` protocol, enabling instances of `HPPatronus` to be used as keys in hash-based collections like dictionaries and sets.
 *
 * Example usage:
 * ```
 * let patronous = HPPatronus.boar
 * print(patronous.rawValue) // Output: "boar"
 * ```
 */
public enum HPPatronus: String, Codable, Hashable {
    
    /// A boar patronus.
    case boar = "boar"
    
    /// A doe patronus.
    case doe = "doe"
    
    /// A goat patronus.
    case goat = "goat"
    
    /// A hare patronus.
    case hare = "hare"
    
    /// A horse patronus.
    case horse = "horse"
    
    /// A Jack Russell terrier patronus.
    case jackRussellTerrier = "Jack Russell terrier"
    
    /// A lynx patronus.
    case lynx = "lynx"
    
    /// A non-corporeal patronus.
    case nonCorporeal = "Non-Corporeal"
    
    /// An otter patronus.
    case otter = "otter"
    
    /// A persian cat patronus.
    case persianCat = "persian cat"
    
    /// A phoenix patronus.
    case phoenix = "Phoenix"
    
    /// A stag patronus.
    case stag = "stag"
    
    /// A swan patronus.
    case swan = "swan"
    
    /// A tabby cat patronus.
    case tabbyCat = "tabby cat"
    
    /// A weasel patronus.
    case weasel = "weasel"
    
    /// A wolf patronus.
    case wolf = "wolf"
    
    /// An unknown patronus.
    case empty = ""
}
