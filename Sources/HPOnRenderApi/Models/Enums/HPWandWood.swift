//
//  HPWandWood.swift
//
//
//  Created by Cedric Pugnaire on 03/02/2024.
//

import Foundation

/**
 * The `HPWandWood` enum represents the different wand wood.
 *
 * Each wood is associated with a string value, which is used for encoding and decoding purposes.
 *
 * The enum conforms to the `Codable` protocol, allowing instances of `HPWandWood` to be encoded to and decoded from external representations such as JSON.
 * It also conforms to the `Hashable` protocol, enabling instances of `HPWandWood` to be used as keys in hash-based collections like dictionaries and sets.
 *
 * Example usage:
 * ```
 * let wood = HPWandWood.alder
 * print(wood.rawValue) // Output: "alder"
 * ```
 */
public enum HPWandWood: String, Codable, Hashable {
    
    /// Wand made with alder wood.
    case alder = "alder"
    
    /// Wand made with ash wood.
    case ash = "ash"
    
    /// Wand made with birch wood.
    case birch = "birch"
    
    /// Wand made with cedar wood.
    case cedar = "cedar"
    
    /// Wand made with cherry wood.
    case cherry = "cherry"
    
    /// Wand made with chestnut wood.
    case chestnut = "chestnut"
    
    /// Wand made with cypress wood.
    case cypress = "cypress"
    
    /// Wand made with elm wood.
    case elm = "elm"
    
    /// Wand made with fir wood.
    case fir = "fir"
    
    /// Wand made with hawthorn wood.
    case hawthorn = "hawthorn"
    
    /// Wand made with hazel wood.
    case hazel = "hazel"
    
    /// Wand made with holly wood.
    case holly = "holly"
    
    /// Wand made with hornbeam wood.
    case hornbeam = "hornbeam"
    
    /// Wand made with larch wood.
    case larch = "larch"
    
    /// Wand made with mahogany wood.
    case mahogany = "mahogany"
    
    /// Wand made with oak wood.
    case oak = "oak"
    
    /// Wand made with vine wood.
    case vine = "vine"
    
    /// Wand made with walnut wood.
    case walnut = "walnut"
    
    /// Wand made with willow wood.
    case willow = "willow"
    
    /// Wand made with yew wood.
    case yew = "yew"
    
    /// An unknown wood.
    case empty = ""
}


