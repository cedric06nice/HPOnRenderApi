//
//  HPSpecies.swift
//  HP
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * The `HPSpecies` enum represents the different species.
 *
 * Each species is associated with a string value, which is used for encoding and decoding purposes.
 *
 * The enum conforms to the `Codable` protocol, allowing instances of `HPSpecies` to be encoded to and decoded from external representations such as JSON.
 * It also conforms to the `Hashable` protocol, enabling instances of `HPSpecies` to be used as keys in hash-based collections like dictionaries and sets.
 *
 * Example usage:
 * ```
 * let species = HPSpecies.acromantula
 * print(species.rawValue) // Output: "acromantula"
 * ```
 */
public enum HPSpecies: String, Codable, Hashable {
    
    /// Represent the acromantula species
    case acromantula = "acromantula"
    
    /// Represent the cat species
    case cat = "cat"
    
    /// Represent the centaur species
    case centaur = "centaur"
    
    /// Represent the dragon species
    case dragon = "dragon"
    
    /// Represent the ghost species
    case ghost = "ghost"
    
    /// Represent the giant species
    case giant = "giant"
    
    /// Represent the goblin species
    case goblin = "goblin"
    
    /// Represent the half-giant species
    case halfGiant = "half-giant"
    
    /// Represent the half-human species
    case halfHuman = "half-human"
    
    /// Represent the hippogriff species
    case hippogriff = "hippogriff"
    
    /// Represent the  house elfspecies
    case houseElf = "house-elf"
    
    /// Represent the human species
    case human = "human"
    
    /// Represent the owl species
    case owl = "owl"
    
    /// Represent the poltergeist species
    case poltergeist = "poltergeist"
    
    /// Represent the three-headed dog species
    case threeHeadedDog = "three-headed dog"
    
    /// Represent the vampire species
    case vampire = "vampire"
    
    /// Represent the werewolf species
    case werewolf = "werewolf"
    
    /// Represent the unknown species
    case empty = ""
}
