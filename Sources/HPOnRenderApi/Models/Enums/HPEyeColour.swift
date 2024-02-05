//
//  HPEyeColour.swift
//  HP
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * The `HPEyeColour` enum represents different eye colors.
 *
 * Each eye colour is associated with a string value, which is used for encoding and decoding purposes.
 *
 * The enum conforms to the `Codable` protocol, allowing instances of `HPEyeColour` to be encoded to and decoded from external representations such as JSON.
 * It also conforms to the `Hashable` protocol, enabling instances of `HPEyeColour` to be used as keys in hash-based collections like dictionaries and sets.
 * 
 * Example usage:
 * ```
 * let eyeColor = HPEyeColour.amber
 * print(eyeColor.rawValue) // Output: "amber"
 * ```
 */
public enum HPEyeColour: String, Codable, Hashable {
    
    /// amber eye color
    case amber = "amber"

    /// black eye color
    case black = "black"

    /// blue eye color
    case blue = "blue"

    /// brown eye color
    case brown = "brown"

    /// dark eye color
    case dark = "dark"

    /// green eye color
    case green = "green"

    /// grey eye color
    case grey = "grey"

    /// hazel eye color
    case hazel = "hazel"

    /// orange eye color
    case orange = "orange"

    /// pale, silvery eye color
    case paleSilvery = "pale, silvery"

    /// scarlet eye color
    case scarlet = "Scarlet"

    /// silver eye color
    case silver = "silver"

    /// white eye color
    case white = "white"

    /// yellow eye color
    case yellow = "yellow"

    /// yellowish eye color
    case yellowish = "yellowish"

    /// no eye color specified
    case empty = ""
}
