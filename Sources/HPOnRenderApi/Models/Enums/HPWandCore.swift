//
//  HPWandCore.swift
//  HP
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * The `HPWandCore` enum represents the different wand core.
 *
 * Each core is associated with a string value, which is used for encoding and decoding purposes.
 *
 * The enum conforms to the `Codable` protocol, allowing instances of `HPWandCore` to be encoded to and decoded from external representations such as JSON.
 * It also conforms to the `Hashable` protocol, enabling instances of `HPWandCore` to be used as keys in hash-based collections like dictionaries and sets.
 *
 * Example usage:
 * ```
 * let core = HPWandCore.dragonHeartstring
 * print(core.rawValue) // Output: "dragon heartstring"
 * ```
 */
public enum HPWandCore: String, Codable, Hashable {
    
    /// The core made from a dragon's heartstring.
    case dragonHeartstring = "dragon heartstring"
    
    /// The core made from a phoenix feather.
    case phoenixFeather = "phoenix feather"
    
    /// The core made from a phoenix tail feather.
    case phoenixTailFeather = "phoenix tail feather"
    
    /// The core made from a unicorn hair.
    case unicornHair = "unicorn hair"
    
    /// The core made from a unicorn tail hair.
    case unicornTailHair = "unicorn tail hair"
    
    /// An unknown core.
    case empty = ""
}
